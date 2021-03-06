<div class="col-sm-12">
    <h3 class="data-title">系统监控</h3>
    <div>
        <h3 class="data-sub-title">基本信息</h3>
        <div class="table-responsive">
            <table class="table table-bordered" style="width: 40%;text-align: center">
                <tbody>
                {{if osBasicInfo}}
                <tr class="info">
                    <td>CPU逻辑核心数目</td>
                    <td>{{osBasicInfo.processorNumber}}</td>
                </tr>
                {{/if}}
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <h3 class="data-sub-title">内存信息</h3>
        <div class="table-responsive">
            <table class="table table-bordered" style="width: 60%;text-align: center">
                <tbody>
                {{if physicalMemorySpaceInfo}}
                <tr class="info">
                    <td>总物理内存容量</td>
                    <td>{{physicalMemorySpaceInfo.totalPhysicalMemorySize/1024}} KB</td>
                    <td>{{physicalMemorySpaceInfo.totalPhysicalMemorySize/1024/1024}} MB</td>
                </tr>
                <tr class="info">
                    <td>已使用物理内存容量</td>
                    <td>{{physicalMemorySpaceInfo.usablePhysicalMemorySize/1024}} KB</td>
                    <td>{{physicalMemorySpaceInfo.usablePhysicalMemorySize/1024/1024}} MB</td>
                </tr>
                <tr class="info">
                    <td>剩余物理内存容量</td>
                    <td>{{physicalMemorySpaceInfo.freePhysicalMemorySize/1024}} KB</td>
                    <td>{{physicalMemorySpaceInfo.freePhysicalMemorySize/1024/1024}} MB</td>
                </tr>
                {{/if}}
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <h3 class="data-sub-title">磁盘信息</h3>
        <div class="table-responsive">
            <table class="table table-bordered" style="width: 100%;text-align: center">
                <thead>
                <tr class="success">
                    <td>磁盘路径</td>
                    <td>总空间(KB)</td>
                    <td>总空间(MB)</td>
                    <td>已使用空间(KB)</td>
                    <td>已使用空间(MB)</td>
                    <td>剩余空间(KB)</td>
                    <td>剩余空间(MB)</td>
                </tr>
                </thead>
                <tbody>
                {{if diskSpaceInfoList}}
                {{each diskSpaceInfoList}}
                <tr class="info">
                    <td>{{$value.path}}</td>
                    <td>{{$value.totalSpace/1024}} KB</td>
                    <td>{{$value.totalSpace/1024/1024}} MB</td>
                    <td>{{$value.usableSpace/1024}} KB</td>
                    <td>{{$value.usableSpace/1024/1024}} MB</td>
                    <td>{{$value.freeSpace/1024}} KB</td>
                    <td>{{$value.freeSpace/1024/1024}} MB</td>
                </tr>
                {{/each}}
                {{/if}}
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <h3 class="data-sub-title">虚拟机信息</h3>
    </div>
</div>