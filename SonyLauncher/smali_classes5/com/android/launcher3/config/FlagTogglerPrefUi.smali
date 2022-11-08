.class public final Lcom/android/launcher3/config/FlagTogglerPrefUi;
.super Ljava/lang/Object;
.source "FlagTogglerPrefUi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlagTogglerPrefFrag"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Landroidx/preference/PreferenceDataStore;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/config/FlagTogglerPrefUi;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMenu(Lcom/android/launcher3/config/FlagTogglerPrefUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->updateMenu()V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/preference/PreferenceFragmentCompat;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi$1;-><init>(Lcom/android/launcher3/config/FlagTogglerPrefUi;)V

    iput-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 81
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    .line 82
    const-string v1, "featureFlags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method

.method private anyChanged()Z
    .locals 4

    .line 147
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 148
    .local v1, "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    invoke-direct {p0, v1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->getFlagStateFromSharedPrefs(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->get()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    .end local v1    # "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getFlagStateFromSharedPrefs(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)Z
    .locals 3
    .param p1, "flag"    # Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    iget-object v1, p1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    invoke-virtual {v0, v1, v2}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateMenu()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->anyChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->setHasOptionsMenu(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 117
    return-void
.end method

.method private updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)V
    .locals 4
    .param p1, "switchPreference"    # Landroidx/preference/SwitchPreference;
    .param p2, "flag"    # Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 108
    iget-boolean v0, p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    const-string v1, ""

    const-string v2, "<b>OVERRIDDEN</b><br>"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 109
    .local v0, "onWarning":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 110
    .local v1, "offWarning":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/preference/PreferenceGroup;)V
    .locals 4
    .param p1, "parent"    # Landroidx/preference/PreferenceGroup;

    .line 91
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 92
    .local v1, "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "switchPreference":Landroidx/preference/SwitchPreference;
    iget-object v3, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 94
    iget-boolean v3, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->defaultValue:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->getFlagStateFromSharedPrefs(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 96
    iget-object v3, v1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)V

    .line 98
    iget-object v3, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 99
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 100
    .end local v1    # "flag":Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
    .end local v2    # "switchPreference":Landroidx/preference/SwitchPreference;
    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->updateMenu()V

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->anyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lcom/android/launcher3/R$id;->menu_apply_flags:I

    const/4 v1, 0x0

    const-string v2, "Apply"

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 122
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/launcher3/R$id;->menu_apply_flags:I

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Killing launcher process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apply new flag values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "FlagTogglerPrefFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->anyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/config/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "Flag won\'t be applied until you restart launcher"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_0
    return-void
.end method
