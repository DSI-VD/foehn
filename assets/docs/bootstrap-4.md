---
title: Bootstrap 4
name: bootstrap-4
collection: docs
styleguide: true
---
<div class="page-header" id="banner">
  <h1>VD.ch - Fœhn Bootstrap 4 Theme</h1>
  <p class="lead">Bootstrap 4 theme for VD.ch</p>
</div>

<!-- Navbar
================================================== -->
<div class="bs-docs-section clearfix">
  <div class="m-a-3"></div>
  <hr>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="navbar">Navbar</h1>
      </div>
      <div class="m-a-3"></div>
      <div class="bs-component">
        <nav class="navbar navbar-light bg-faded">
          <a class="navbar-brand" href="#0">Navbar</a>
          <ul class="nav navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="#0">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">About</a>
            </li>
          </ul>
          <form class="form-inline pull-xs-right">
            <input class="form-control" type="text" placeholder="Search">
            <button class="btn btn-success text-uppercase" type="submit">Search</button>
          </form>
        </nav>
      </div><!-- /example -->
      <div class="m-a-3"></div>
      <div class="bs-component">
        <nav class="navbar navbar-dark bg-inverse">
          <a class="navbar-brand" href="#0">Navbar</a>
          <ul class="nav navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="#0">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#0">About</a>
            </li>
          </ul>
          <form class="form-inline pull-xs-right">
            <input class="form-control" type="text" placeholder="Search">
            <button class="btn btn-success text-uppercase" type="submit">Search</button>
          </form>
        </nav>
      </div><!-- /example -->

    </div>
  </div>
</div>
<!-- Buttons
================================================== -->
<div class="bs-docs-section">
  <div class="m-a-3"></div>
  <hr>
  <div class="m-a-3"></div>
  <div class="page-header">
    <div class="row">
      <div class="col-lg-12">
        <h1 id="buttons">Buttons</h1>
      </div>
    </div>
  </div>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-7">
      <p>Normal buttons:</p>
      <p class="bs-component">
        <a href="#0" class="text-uppercase btn btn-primary">Primary</a>
        <a href="#0" class="text-uppercase btn btn-secondary">Secondary</a>
        <a href="#0" class="text-uppercase btn btn-success">Success</a>
        <a href="#0" class="text-uppercase btn btn-info">Info</a>
        <a href="#0" class="text-uppercase btn btn-warning">Warning</a>
        <a href="#0" class="text-uppercase btn btn-danger">Danger</a>
        <a href="#0" class="text-uppercase btn btn-link">Link</a>
      </p>
      <p>Disabled buttons:</p>
      <p class="bs-component">
        <a href="#0" class="text-uppercase btn btn-primary disabled">Primary</a>
        <a href="#0" class="text-uppercase btn btn-secondary disabled">Secondary</a>
        <a href="#0" class="text-uppercase btn btn-success disabled">Success</a>
        <a href="#0" class="text-uppercase btn btn-info disabled">Info</a>
        <a href="#0" class="text-uppercase btn btn-warning disabled">Warning</a>
        <a href="#0" class="text-uppercase btn btn-danger disabled">Danger</a>
        <a href="#0" class="text-uppercase btn btn-link disabled">Link</a>
      </p>
      <p>Outlined buttons:</p>
      <p class="bs-component">
        <a href="#0" class="text-uppercase btn btn-outline-primary">Primary</a>
        <a href="#0" class="text-uppercase btn btn-outline-secondary">Secondary</a>
        <a href="#0" class="text-uppercase btn btn-outline-success">Success</a>
        <a href="#0" class="text-uppercase btn btn-outline-info">Info</a>
        <a href="#0" class="text-uppercase btn btn-outline-warning">Warning</a>
        <a href="#0" class="text-uppercase btn btn-outline-danger">Danger</a>
      </p>
      <p>Buttons groups:</p>
      <div>
        <div class="btn-toolbar bs-component">
          <div class="btn-group">
            <button type="button" class="btn btn-secondary text-uppercase">Secondary</button>
            <button type="button" class="btn btn-secondary text-uppercase dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-primary text-uppercase">Primary</button>
            <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-success text-uppercase">Success</button>
            <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-info text-uppercase">Info</button>
            <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-warning text-uppercase">Warning</button>
            <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-danger text-uppercase">Danger</button>
            <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
        </div>
      </div>
      <div class="m-a-1"></div>
      <p class="bs-component">
        <a href="#0" class="btn btn-secondary btn-lg text-uppercase">Large button</a>
        <a href="#0" class="btn btn-secondary text-uppercase">Default button</a>
        <a href="#0" class="btn btn-secondary btn-sm text-uppercase">Small button</a>
      </p>
    </div>
    <div class="col-lg-5">
      <p class="bs-component">
        <a href="#0" class="btn btn-success btn-lg btn-block text-uppercase">Block level button</a>
      </p>
      <div class="bs-component" style="margin-bottom: 15px;">
        <div class="btn-group">
          <a href="#0" class="btn btn-secondary text-uppercase">Left</a>
          <a href="#0" class="btn btn-secondary text-uppercase">Middle</a>
          <a href="#0" class="btn btn-secondary text-uppercase">Right</a>
        </div>
      </div>
      <div class="bs-component" style="margin-bottom: 15px;">
        <div class="btn-toolbar" role="toolbar"  aria-label="Toolbar with button groups">
          <div class="btn-group" role="group" aria-label="First group">
            <a href="#0" class="btn btn-secondary">1</a>
            <a href="#0" class="btn btn-secondary">2</a>
            <a href="#0" class="btn btn-secondary">3</a>
            <a href="#0" class="btn btn-secondary">4</a>
          </div>
          <div class="btn-group" role="group" aria-label="Second group">
            <a href="#0" class="btn btn-secondary">5</a>
            <a href="#0" class="btn btn-secondary">6</a>
            <a href="#0" class="btn btn-secondary">7</a>
          </div>
          <div class="btn-group" role="group" aria-label="Third group">
            <a href="#0" class="btn btn-secondary">8</a>
            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
        </div>
      </div>
      <div class="bs-component">
        <div class="btn-group-vertical">
            <a href="#0" class="btn btn-secondary text-uppercase">Button</a>
            <a href="#0" class="btn btn-secondary text-uppercase">Button</a>
            <a href="#0" class="btn btn-secondary text-uppercase">Button</a>
            <a href="#0" class="btn btn-secondary text-uppercase">Button</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Typography
================================================== -->
<div class="bs-docs-section">
  <div class="m-a-3"></div>
  <hr>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="typography">Typography</h1>
      </div>
    </div>
  </div>
  <div class="m-a-3"></div>
  <!-- Headings -->
  <div class="row">
    <div class="col-lg-6">
      <h1 class="display-1">Display 1</h1>
      <h1 class="display-2">Display 2</h1>
      <h1 class="display-3">Display 3</h1>
      <h1 class="display-4">Display 4</h1>
    </div>
    <div class="col-lg-6">
      <h2>Inline text elements</h2>
      <p>You can use the mark tag to <mark>highlight</mark> text.</p>
      <p><del>This line of text is meant to be treated as deleted text.</del></p>
      <p><s>This line of text is meant to be treated as no longer accurate.</s></p>
      <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>
      <p><u>This line of text will render as underlined</u></p>
    </div>
  </div>
  <hr class="m-y-2">
  <div class="row">
    <div class="col-lg-4">
      <div class="bs-component">
        <h1>Heading 1</h1>
        <h2>Heading 2</h2>
        <h3>Heading 3</h3>
        <h4>Heading 4</h4>
        <h5>Heading 5</h5>
        <h6>Heading 6</h6>
        <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <h2>Example body text</h2>
        <p>Nullam quis risus eget <a href="#0">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
        <p><small>This line of text is meant to be treated as fine print.</small></p>
        <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>
        <p>The following snippet of text is <em>rendered as italicized text</em>.</p>
        <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <h2>Emphasis classes</h2>
        <p class="text-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</p>
        <p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
        <p class="text-warning">Etiam porta sem malesuada magna mollis euismod.</p>
        <p class="text-danger">Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p class="text-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
        <p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
      </div>
    </div>
  </div>
  <!-- Blockquotes -->
  <div class="row">
    <div class="col-lg-12">
      <h2 id="type-blockquotes">Blockquotes</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="bs-component">
        <blockquote class="blockquote">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
        </blockquote>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="bs-component">
        <blockquote class="blockquote blockquote-reverse">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
        </blockquote>
      </div>
    </div>
  </div>
</div>
<!-- Tables
================================================== -->
<div class="bs-docs-section">
  <div class="m-a-3"></div>
  <hr>
  <div class="row">
    <div class="m-a-3"></div>
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="tables">Tables</h1>
      </div>
      <div class="m-a-3"></div>
      <div class="bs-component">
        <table class="table table-striped table-hover ">
          <thead class="thead-inverse">
            <tr>
              <th>#</th>
              <th>Column heading</th>
              <th>Column heading</th>
              <th>Column heading</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr>
              <td>2</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr class="info">
              <td>3</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr class="success">
              <td>4</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr class="danger">
              <td>5</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr class="warning">
              <td>6</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
            <tr class="active">
              <td>7</td>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
            </tr>
          </tbody>
        </table>
      </div><!-- /example -->
    </div>
  </div>
</div>
<!-- Forms
================================================== -->
<div class="bs-docs-section">
  <hr>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="forms">Forms</h1>
      </div>
    </div>
  </div>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-6">
      <div class="bs-component">
        <form class="form-horizontal">
          <fieldset>
            <legend>Legend</legend>
            <div class="form-group row">
              <label for="inputEmail" class="col-xs-2 col-form-label">Email</label>
              <div class="col-xs-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
              </div>
            </div>
            <div class="form-group row">
              <label for="inputPassword" class="col-xs-2 col-form-label">Password</label>
              <div class="col-xs-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                <div class="form-check">
                  <label class="form-check-label custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                </div>
              </div>
            </div>
            <div class="form-group row">
              <label for="textArea" class="col-xs-2 col-form-label">Textarea</label>
              <div class="col-xs-10">
                <textarea class="form-control" rows="3" id="textArea" aria-describedby="textareaHelp"></textarea>
                <small id="textareaHelp" class="form-text text-muted">A longer block of help text that breaks onto a new line and may extend beyond one line.</small>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-xs-2 col-form-label">Radios</label>
              <div class="col-xs-10">
                <div class="form-group">
                  <label class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Option one is this and that&mdash;be sure to include why it's great</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="optionsRadios" id="optionsRadios2" value="option2">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Option two can be something else and selecting it will deselect option one</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Option three is disabled</span>
                  </label>
                </div>
              </div>
            </div>
            <div class="form-group row">
              <label for="select" class="col-xs-2 col-form-label">Selects</label>
              <div class="col-xs-10">
                <select class="form-control custom-select" id="select">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
                <br>
                <br>
                <select multiple class="form-control">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="file" class="col-xs-2 col-form-label">File upload</label>
              <div class="col-xs-10">
                <label class="custom-file">
                  <input type="file" id="file" class="custom-file-input">
                  <span class="custom-file-control"></span>
                </label>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-xs-10 offset-xs-2">
                <button type="reset" class="btn btn-secondary text-uppercase">Cancel</button>
                <button type="submit" class="btn btn-primary text-uppercase">Submit</button>
              </div>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
    <div class="col-lg-4 offset-lg-1">
        <form class="bs-component">
          <div class="form-group">
            <label class="control-label" for="disabledInput">Disabled input</label>
            <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
          </div>
          <div class="form-group has-success">
            <label class="col-form-label" for="inputSuccess1">Input with success</label>
            <input type="text" class="form-control form-control-success" id="inputSuccess1">
            <div class="form-control-feedback">Success! You've done it.</div>
            <small class="form-text text-muted">Example help text that remains unchanged.</small>
          </div>
          <div class="form-group has-warning">
            <label class="col-form-label" for="inputWarning1">Input with warning</label>
            <input type="text" class="form-control form-control-warning" id="inputWarning1">
            <div class="form-control-feedback">Shucks, check the formatting of that and try again.</div>
            <small class="form-text text-muted">Example help text that remains unchanged.</small>
          </div>
          <div class="form-group has-danger">
            <label class="col-form-label" for="inputDanger1">Input with danger</label>
            <input type="text" class="form-control form-control-danger" id="inputDanger1">
            <div class="form-control-feedback">Sorry, that username's taken. Try another?</div>
            <small class="form-text text-muted">Example help text that remains unchanged.</small>
          </div>
          <div class="form-group">
            <label class="control-label" for="inputLarge">Large input</label>
            <input class="form-control form-control-lg" type="text" id="inputLarge">
          </div>
          <div class="form-group">
            <label class="control-label" for="inputDefault">Default input</label>
            <input type="text" class="form-control" id="inputDefault">
          </div>
          <div class="form-group">
            <label class="control-label" for="inputSmall">Small input</label>
            <input class="form-control form-control-sm" type="text" id="inputSmall">
          </div>
          <div class="form-group">
            <label class="control-label">Input addons</label>
            <div class="input-group">
              <span class="input-group-addon">$</span>
              <input type="text" class="form-control">
              <span class="input-group-btn">
                <button class="btn btn-secondary text-uppercase" type="button">Button</button>
              </span>
            </div>
          </div>
        </form>
    </div>
  </div>
</div>
<!-- Navs
================================================== -->
<div class="m-a-3"></div>
<hr>
<div class="m-a-3"></div>
<div class="bs-docs-section">
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="navs">Navs</h1>
        <div class="m-a-3"></div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <h2 id="nav-tabs">Tabs</h2>
      <div class="bs-component" role="tabpanel">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Profile</a>
          </li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                Other
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" id="dropdown1-tab" href="#messages" role="tab" data-toggle="tab" aria-controls="dropdown1">Messages</a>
                <a class="dropdown-item" id="dropdown2-tab" href="#settings" role="tab" data-toggle="tab" aria-controls="dropdown2">Settings</a>
              </div>
            </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content m-t-1">
          <div class="tab-pane active" id="home" role="tabpanel">
            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
          </div>
          <div class="tab-pane" id="profile" role="tabpanel">
            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
          </div>
          <div class="tab-pane" id="messages" role="tabpanel">
            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
          </div>
          <div class="tab-pane" id="settings" role="tabpanel">
            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
          </div>
        </div>
      </div>
      <div class="bs-component" role="tabpanel">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs nav-tabs-purple" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home-purple" role="tab">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#profile-purple" role="tab">Profile</a>
          </li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                Other
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" id="dropdown1-tab" href="#messages-purple" role="tab" data-toggle="tab" aria-controls="dropdown1">Messages</a>
                <a class="dropdown-item" id="dropdown2-tab" href="#settings-purple" role="tab" data-toggle="tab" aria-controls="dropdown2">Settings</a>
              </div>
            </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content m-t-1">
          <div class="tab-pane active" id="home-purple" role="tabpanel">
            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
          </div>
          <div class="tab-pane" id="profile-purple" role="tabpanel">
            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
          </div>
          <div class="tab-pane" id="messages-purple" role="tabpanel">
            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
          </div>
          <div class="tab-pane" id="settings-purple" role="tabpanel">
            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-6">
      <h2 id="nav-pills">Pills</h2>
      <div class="bs-component">
        <ul class="nav nav-pills">
          <li class="nav-item">
            <a class="nav-link active" href="#0">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#0">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#0">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#0">
              Dropdown
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#0">Action</a>
              <a class="dropdown-item" href="#0">Another action</a>
              <a class="dropdown-item" href="#0">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#0">Separated link</a>
            </div>
          </li>
        </ul>
      </div>
      <br>
      <div class="bs-component">
        <ul class="nav nav-pills nav-stacked">
          <li class="nav-item">
            <a class="nav-link active" href="#0">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#0">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#0">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#0">
              Dropdown
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#0">Action</a>
              <a class="dropdown-item" href="#0">Another action</a>
              <a class="dropdown-item" href="#0">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#0">Separated link</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="m-a-3"></div>
    <div class="col-lg-6">
      <h2 id="pagination">Pagination</h2>
      <div class="bs-component">
        <nav aria-label="Page navigation">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item active"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </nav>
        <nav aria-label="Page navigation">
          <ul class="pagination pagination-lg">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item active"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </nav>
        <nav aria-label="Page navigation">
          <ul class="pagination pagination-sm">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item active"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <div class="col-lg-6">
      <h2 id="nav-breadcrumbs">Breadcrumbs</h2>
      <div class="bs-component">
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="#0">vd.ch</a></li>
          <li class="breadcrumb-item active"></li>
        </ul>
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="#0">vd.ch</a></li>
          <li class="breadcrumb-item"><a href="#0">Fil d'Ariane</a></li>
          <li class="breadcrumb-item"><a href="#0">Application métier non sécurisée</a></li>
          <li class="breadcrumb-item active"></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Indicators
================================================== -->
<div class="m-a-3"></div>
<hr>
<div class="m-a-3"></div>
<div class="bs-docs-section">
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="indicators">Indicators</h1>
        <div class="m-a-3"></div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <h2>Alerts</h2>
      <div class="bs-component">
        <div class="alert alert-dismissible alert-warning" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="alert-heading">Warning!</h4>
          <p class="m-b-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#0" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="alert alert-dismissible alert-danger">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Oh snap!</strong> <a href="#0" class="alert-link">Change a few things up</a> and try submitting again.
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="alert alert-dismissible alert-success">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Well done!</strong> You successfully read <a href="#0" class="alert-link">this important alert message</a>.
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="alert alert-dismissible alert-info">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Heads up!</strong> This <a href="#0" class="alert-link">alert needs your attention</a>, but it's not super important.
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <h2>Tags</h2>
      <div class="bs-component" style="margin-bottom: 40px;">
        <span class="tag tag-default">Default</span>
        <span class="tag tag-primary">Primary</span>
        <span class="tag tag-success">Success</span>
        <span class="tag tag-warning">Warning</span>
        <span class="tag tag-danger">Danger</span>
        <span class="tag tag-info">Info</span>
      </div>
    </div>
    <div class="col-lg-4">
      <h2>Badges</h2>
      <div class="bs-component">
        <ul class="nav nav-pills">
          <li class="active"><a href="#0">Home <span class="tag tag-pill tag-default">42</span></a></li>
          <li><a href="#0">Profile <span class="tag tag-pill tag-primary">2</span></a></li>
          <li><a href="#0">Messages <span class="tag tag-pill tag-success">3</span></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Progress bars
================================================== -->
<div class="m-a-3"></div>
<hr>
<div class="m-a-3"></div>
<div class="bs-docs-section">
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="progress-bars">Progress bars</h1>
        <div class="m-a-3"></div>
      </div>
      <h3 id="progress-basic">Basic</h3>
      <div class="bs-component">
        <div class="text-xs-center" id="example-caption-1">Reticulating splines&hellip; 0%</div>
        <progress class="progress" value="0" max="100" aria-describedby="example-caption-1"></progress>
      </div>
      <h3 id="progress-alternatives">Contextual alternatives</h3>
      <div class="bs-component">
        <div class="text-xs-center" id="example-caption-2">Reticulating splines&hellip; 25%</div>
        <progress class="progress" value="25" max="100" aria-describedby="example-caption-2"></progress>
        <div class="text-xs-center" id="example-caption-3">Reticulating splines&hellip; 50%</div>
        <progress class="progress" value="50" max="100" aria-describedby="example-caption-3"></progress>
        <div class="text-xs-center" id="example-caption-4">Reticulating splines&hellip; 75%</div>
        <progress class="progress" value="75" max="100" aria-describedby="example-caption-4"></progress>
        <div class="text-xs-center" id="example-caption-5">Reticulating splines&hellip; 100%</div>
        <progress class="progress" value="100" max="100" aria-describedby="example-caption-5"></progress>
      </div>
      <h3 id="progress-striped">Striped</h3>
      <div class="bs-component">
        <progress class="progress progress-striped" value="10" max="100"></progress>
        <progress class="progress progress-striped progress-success" value="25" max="100"></progress>
        <progress class="progress progress-striped progress-info" value="50" max="100"></progress>
        <progress class="progress progress-striped progress-warning" value="75" max="100"></progress>
        <progress class="progress progress-striped progress-danger" value="100" max="100"></progress>
      </div>
      <h3 id="progress-animated">Animated <small>not working, see <a href="https://github.com/twbs/bootstrap/issues/17148">Github Issue</a></small></h3>
      <div class="bs-component">
        <progress class="progress progress-striped progress-animated" value="25" max="100"></progress>
      </div>
    </div>
  </div>
</div>
<!-- Containers
================================================== -->
<div class="bs-docs-section">
  <div class="m-a-3"></div>
  <hr>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="containers">Containers</h1>
        <div class="m-a-3"></div>
      </div>
      <div class="bs-component">
        <div class="jumbotron">
          <h1 class="display-3">Hello, world!</h1>
          <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
          <hr class="m-y-2">
          <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
          <p class="lead">
            <a class="btn btn-primary btn-lg text-uppercase" href="#" role="button">Learn more</a>
          </p>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <h2>List groups</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <div class="bs-component">
        <ul class="list-group">
          <li class="list-group-item">
            <span class="tag tag-pill tag-primary pull-xs-right">14</span>
            Cras justo odio
          </li>
          <li class="list-group-item">
            <span class="tag tag-pill tag-primary pull-xs-right">2</span>
            Dapibus ac facilisis in
          </li>
          <li class="list-group-item">
            <span class="tag tag-pill tag-primary pull-xs-right">1</span>
            Morbi leo risus
          </li>
        </ul>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="list-group">
          <a href="#0" class="list-group-item list-group-item-action active">
            Cras justo odio
          </a>
          <a href="#0" class="list-group-item list-group-item-action">Dapibus ac facilisis in
          </a>
          <a href="#0" class="list-group-item list-group-item-action disabled">Morbi leo risus
          </a>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action active">
            <h5 class="list-group-item-heading m-b-1">List group item heading</h5>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
          </a>
          <a href="#0" class="list-group-item list-group-item-action">
            <h5 class="list-group-item-heading m-b-1">List group item heading</h5>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
          </a>
          <a href="#0" class="list-group-item list-group-item-action">
            <h5 class="list-group-item-heading m-b-1">List group item heading</h5>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <h2>Cards</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="card card-block">
          <p class="card-text">
            Basic card
          </p>
        </div>
        <div class="card">
          <div class="card-header">Card heading</div>
          <div class="card-block">
            <p class="card-text">Card content</p>
          </div>
        </div>
        <div class="card">
          <div class="card-block">
            <p class="card-text">Card content</p>
          </div>
          <div class="card-footer">Card footer</div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="card card-primary card-inverse">
          <div class="card-block">
            <h3 class="card-title">
              Card primary
            </h3>
            <p class="card-text">Card content</p>
          </div>
        </div>
        <div class="card card-success card-inverse">
          <div class="card-block">
            <h3 class="card-title">
              Card success
            </h3>
            <p class="card-text">Card content</p>
          </div>
        </div>
        <div class="card card-warning card-inverse">
          <div class="card-block">
            <h3 class="card-title">
              Card warning
            </h3>
            <p class="card-text">Card content</p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="bs-component">
        <div class="card card-danger card-inverse">
          <div class="card-block">
            <h3 class="card-title">
              Card danger
            </h3>
            <p class="card-text">Card content</p>
          </div>
        </div>
        <div class="card card-info card-inverse">
          <div class="card-block">
            <h3 class="card-title">
              Card info
            </h3>
            <p class="card-text">Card content</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Dialogs
================================================== -->
<div class="bs-docs-section">
  <div class="m-a-3"></div>
  <hr>
  <div class="m-a-3"></div>
  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h1 id="dialogs">Dialogs</h1>
        <div class="m-a-3"></div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <h2>Modals</h2>
      <div class="bs-component">
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
          Launch demo modal
        </button>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>
              <div class="modal-body">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-8">
      <h2>Popovers</h2>
      <div class="bs-component">
        <button type="button" class="btn btn-secondary text-uppercase" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on top
        </button>
        <button type="button" class="btn btn-secondary text-uppercase" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on right
        </button>
        <button type="button" class="btn btn-secondary text-uppercase" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
        sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on bottom
        </button>
        <button type="button" class="btn btn-secondary text-uppercase" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on left
        </button>
      </div>
      <h2 class="m-t-2">Tooltips</h2>
      <div class="bs-component">
        <button type="button" class="btn btn-secondary text-uppercase" data-toggle="tooltip" data-placement="left" title data-original-title="Tooltip on left">Left</button>
        <button type="button" class="btn btn-secondary text-uppercase" data-toggle="tooltip" data-placement="top" title data-original-title="Tooltip on top">Top</button>
        <button type="button" class="btn btn-secondary text-uppercase" data-toggle="tooltip" data-placement="bottom" title data-original-title="Tooltip on bottom">Bottom</button>
        <button type="button" class="btn btn-secondary text-uppercase" data-toggle="tooltip" data-placement="right" title data-original-title="Tooltip on right">Right</button>
      </div>
    </div>
  </div>
</div>
<footer class="m-t-3">
  <div class="row">
    <div class="col-lg-12 text-muted">
      <p>Made by <a href="http://antistatique.net">Antistatique</a>. Inspired by the Bootstrap 3 components page from <a href="http://bootswatch.com" target="_blank">bootswatch.com</a>.</p>
      <p>Based on <a href="http://http://v4-alpha.getbootstrap.com/" rel="nofollow">Bootstrap 4 Alpha</a></p>
    </div>
  </div>
</footer>
