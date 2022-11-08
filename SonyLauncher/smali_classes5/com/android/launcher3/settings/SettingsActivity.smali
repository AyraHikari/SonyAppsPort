.class public Lcom/android/launcher3/settings/SettingsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
    }
.end annotation


# static fields
.field private static final CTA_APP_PACKAGENAME:Ljava/lang/String; = "com.sonymobile.cta"

.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field private static final DEVELOPER_OPTIONS_KEY:Ljava/lang/String; = "pref_developer_options"

.field static final EXTRA_FRAGMENT:Ljava/lang/String; = ":settings:fragment"

.field static final EXTRA_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:fragment_args"

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final FLAGS_PREFERENCE_KEY:Ljava/lang/String; = "flag_toggler"

.field private static final NOTIFICATION_DOTS_PREFERENCE_KEY:Ljava/lang/String; = "pref_icon_badging"

.field public static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final VALID_PREFERENCE_FRAGMENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    const-class v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/launcher3/settings/SettingsActivity;->VALID_PREFERENCE_FRAGMENTS:Ljava/util/List;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getPreferenceFragment()Ljava/lang/String;
    .locals 5

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "preferenceFragment":Ljava/lang/String;
    sget v1, Lcom/android/launcher3/R$string;->settings_fragment_name:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "defaultFragment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    return-object v1

    .line 144
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher3/settings/SettingsActivity;->VALID_PREFERENCE_FRAGMENTS:Ljava/util/List;

    .line 145
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_2
    :goto_0
    return-object v0
.end method

.method private startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 4
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;

    .line 157
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 163
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 164
    .local v1, "f":Landroidx/fragment/app/Fragment;
    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 166
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher3/settings/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v3, ":settings:fragment"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 170
    const-string v3, ":settings:fragment_args"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    :goto_0
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/android/launcher3/R$layout;->settings_activity:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->setContentView(I)V

    .line 103
    sget v0, Lcom/android/launcher3/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":settings:fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ":settings:fragment_args"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    :cond_1
    if-nez p1, :cond_4

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 113
    .local v1, "args":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 114
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 117
    :cond_2
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "prefKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 123
    .local v2, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 124
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getPreferenceFragment()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 125
    .local v4, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$id;->content_frame:I

    invoke-virtual {v5, v6, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 129
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "fm":Landroidx/fragment/app/FragmentManager;
    .end local v3    # "prefKey":Ljava/lang/String;
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->onBackPressed()V

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceFragment"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/Preference;

    .line 178
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z
    .locals 3
    .param p1, "caller"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/PreferenceScreen;

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget v1, Lcom/android/launcher3/R$string;->settings_fragment_name:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 154
    return-void
.end method
