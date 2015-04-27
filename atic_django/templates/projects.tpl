<h1 class="pageTitle">Projects</h1>
<hr>
<span>Click one of the following projects to see details on it, or scroll down
to read through them:</span>
<!--these connect to the different projects on the page-->
<nav id="projectNav">
    <a href="#Bistro">Bistro</a>
    <a href="#EEG">Electroencephalogram</a>
    <a href="#generalsBuzz">Generals Buzz</a>
</nav>
<hr>

<section id="Bistro">
<img class="leftImage" src="/static/media/projectImages/bistro.jpg"
alt="Bistro hardware picture">
<h2 class="projectTitle">Bistro</h2>
<div class="byLine">by: Andrew Fleckenstein</div>
<p class="projectDetails">
Bistro is a computer-aided fluency training program that helps stutterers
overcome their impediment. It uses an accelerometer connected to an Arduino,
which is strapped around the abdomen, to measure breathing. Knowing when a full
breath is drawn is essential to knowing when one should start speaking.  A
microphone to measure speech volume, which helps train continuous phonation.
The Arduino and accelerometer were chosen for their portability, availability,
and price. The project is programmed in Java, which was chosen for its
portability and native GUI capabilities.
</p><a href="#top">(top)</a>
</section>

<hr class=clear>
<section id="EEG">
<img class="rightImage" src="/static/media/projectImages/EEGPicture.jpg"
alt="EEG picture">
<h2 class="projectTitle">Building an Electroencephalogram (EEG)</h2>
<div class="byLine">by: William Edmisten</div>
<p class="projectDetails">
An EEG is an instrument which measures the electrical activity of the brain,
resulting from the ionic current flow of neurons. EEGs can measure voltage
patterns which correspond to certain brain activities, such as
relaxation/attention or drowsiness.
</p><p>
An online schematic was followed, which involved combining several input
filters to ensure quality data was recorded from the electrodes attached to the
scalp.
</p><p>
An instrumentation amplifier and two operational amplifiers were used to
compare two signals and return the amplified difference. A series of resistors
and capacitors were used to filter the input into viable, processed data. A
potentiometer was used to control gain in the final stage. Two disposable
electrodes are used for signal input: one attached to the leg (as a reference
signal) and one to the scalp.
</p><a href="#top">(top)</a>
</section>

<hr class=clear>
<section id="generalsBuzz">
<img class="leftImage" src="/static/media/projectImages/generals_buzz.png"
alt="project picture">
<h2 class="projectTitle">Generals Buzz</h2>
<div class="byLine">by: Kenny Worden</div>
<p class="projectDetails">Students, parents, and faculty need to stay on top of
upcoming events at Washington-Lee. Frequently, they need to see the who, what,
when, and where for events quickly – what period is the pep rally? Was school
canceled today? What quarter exams are today? When is that School Board
meeting? Not everyone has access to a computer when they're on the move to
their next class or when they remember that something was happening today and
they're stuck in a place with no cell service, and navigating to the school
website takes at least 3 clicks on a mobile device... on a website not designed
for mobile integration nor for the painfully slow internet that is bogged down
by hundreds of other students and faculty using it simultaneously.
</p><p>
Generals Buzz seeks to combat that problem. It tells you as much information as
it can garner from the school website, and saves it on your device. No more
loading, no more navigating. Simply open the app and know what is happening
today, tomorrow, or 3 months in the future, all without an internet connection.
If the app detects a change in events, the calendar automatically updates
itself when it has a connection. Want to be reminded about a specific event?
Simply open an event menu to set a calendar reminder or hide events that you
don't care for.
</p><a href="#top">(top)</a>
</section>
<hr class=clear>

%rebase templates/layout.tpl title='ATIC Projects', addstyles=['project']
