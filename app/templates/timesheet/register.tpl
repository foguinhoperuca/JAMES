<h1>Timesheet</h1>

<div id="divRegister">
    <label for="inputDate">Date</label>
    <input type="text" id="inputDate" class="input-small dateMask" value="{{date}}" placeholder="dd/mm/yyyy" data-bind="value:date,events:['keyup']"/>

    <label for="inputStartTime">Start Time</label>
    <input type="text" id="inputStartTime" class="input-small timeMask" value="{{startTime}}" placeholder="hh:mm" data-bind="value:startTime,events:['keyup']"/>
    <label for="txtStartTimeMotive">Start Time Motive</label>
    <textarea type="text" id="txtStartTimeMotive" rows="10" class="input-xxlarge" placeholder="Motive to start early..." data-bind="value:startTimeMotive,events:['keyup']">{{startTimeMotive}}</textarea>

    <label for="inputEndTime">End Time</label>
    <input type="text" id="inputEndTime" class="input-small timeMask" value="{{endTime}}" placeholder="hh:mm" data-bind="value:endTime,events:['keyup']" />
    <label for="txtEndTimeMotive">End Time Motive</label>
    <textarea type="text" id="txtEndTimeMotive" rows="10" class="input-xxlarge" placeholder="Motive to stay latter..." data-bind="value:endTimeMotive,events:['keyup']">{{endTimeMotive}}</textarea>

    <label for="inputLeavingEarly">Leaving Early</label>
    <input type="text" id="inputLeavingEarly" class="input-small" value="{{leavingEarly}}" placeholder="hh:mm" data-bind="value:leavingEarly,events:['keyup']" />
    <label for="txtLeavingEarlyMotive">Leaving Early Motive</label>
    <textarea type="text" id="txtLeavingEarlyMotive" rows="10" class="input-xxlarge" placeholder="Motive to leaving early..." data-bind="value:leavingEarlyMotive,events:['keyup']">{{leavingEarlyMotive}}</textarea>

    <label for="txtObservation">Observation</label>
    <textarea type="text" id="txtObservation" rows="10" class="input-xxlarge" placeholder="Observation..." data-bind="value:observation,events:['keyup']">{{observation}}</textarea>
</div>
<br />
<span id="spanMessage"></span>
<br />
<br />
<a href="#timesheets" class="btn btn-inverse"><i class="icon-home icon-white"></i> Go Back!</a>
<a href="#" id="btnPersist" type="submit" class="btn btn-primary"><i class="icon-ok icon-white"></i> Send</a>
