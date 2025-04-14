<!-- Colours Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$COLOURS_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
        <input type="hidden" name="sel_btn_session" value="colours" />
        <div class="form-group">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex flex-column">
                <label class="text-end">Primary Background</label>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgPrimary" value="{$BGPRIMARY}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input"
                           id="bgPrimary" name="bgPrimary" placeholder="#fff" value="{$BGPRIMARY}">
                </div>
            </div>
            <div class="d-flex flex-column align-items-end">
                <span class="badge bg-dark text-white mb-1">Dark</span>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgPrimaryDark" value="{$BGPRIMARYDARK}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input text-end"
                           id="bgPrimaryDark" name="bgPrimaryDark" placeholder="#000" value="{$BGPRIMARYDARK}">
                </div>
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex flex-column">
                <label class="text-end">Secondary Background</label>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgSecondary" value="{$BGSECONDARY}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input"
                           id="bgSecondary" name="bgSecondary" placeholder="#fff" value="{$BGSECONDARY}">
                </div>
            </div>
            <div class="d-flex flex-column align-items-end">
                <span class="badge bg-dark text-white mb-1">Dark</span>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgSecondaryDark" value="{$BGSECONDARYDARK}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input text-end"
                           id="bgSecondaryDark" name="bgSecondaryDark" placeholder="#000" value="{$BGSECONDARYDARK}">
                </div>
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex flex-column">
                <label class="text-end">Tertiary Background</label>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgTertiary" value="{$BGTERTIARY}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input"
                           id="bgTertiary" name="bgTertiary" placeholder="#fff" value="{$BGTERTIARY}">
                </div>
            </div>
            <div class="d-flex flex-column align-items-end">
                <span class="badge bg-dark text-white mb-1">Dark</span>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="bgTertiaryDark" value="{$BGTERTIARYDARK}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input text-end"
                           id="bgTertiaryDark" name="bgTertiaryDark" placeholder="#000" value="{$BGTERTIARYDARK}">
                </div>
            </div>
        </div>
    </div>
    
    <hr />
    
    <div class="form-group">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex flex-column">
                <label class="text-end">Primary Border</label>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="borderPrimary" value="{$BORDERPRIMARY}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input"
                           id="borderPrimary" name="borderPrimary" placeholder="#fff" value="{$BORDERPRIMARY}">
                </div>
            </div>
            <div class="d-flex flex-column align-items-end">
                <span class="badge bg-dark text-white mb-1">Dark</span>
                <div class="d-flex align-items-center gap-2">
                    <input type="color" class="form-control form-control-color color-picker"
                           data-target="borderPrimaryDark" value="{$BORDERPRIMARYDARK}" style="width: 3rem; padding: 0;">
                    <input type="text" class="form-control hex-input text-end"
                           id="borderPrimaryDark" name="borderPrimaryDark" placeholder="#000" value="{$BORDERPRIMARYDARK}">
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
    <input type="hidden" name="token" value="{$TOKEN}">
    <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
        {$SUBMIT}</button>
</div>
    
        </form>
    </div>
</div>
{literal}
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('.color-picker').forEach(function(picker) {

                const targetId = picker.getAttribute('data-target');
                const hexInput = document.getElementById(targetId);

                picker.addEventListener('input', () => {
                    hexInput.value = picker.value;
                });

                hexInput.addEventListener('input', () => {
                    const val = hexInput.value;
                    if (/^#([0-9A-F]{3}){1,2}$/i.test(val)) {
                        picker.value = val;
                    }
                });
            });
        });
    </script>
    {/literal}
    