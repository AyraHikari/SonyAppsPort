.class Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;
.super Landroidx/preference/SwitchPreference;
.source "DeveloperOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/DeveloperOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginPreference"
.end annotation


# instance fields
.field private final mComponentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mPluginEnabler:Landroidx/preference/PreferenceDataStore;

.field private final mSettingsInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroidx/preference/PreferenceDataStore;Ljava/util/List;)V
    .locals 7
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pluginEnabler"    # Landroidx/preference/PreferenceDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroidx/preference/PreferenceDataStore;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p4, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 420
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    .line 421
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 423
    .local v1, "settingsIntent":Landroid/content/Intent;
    nop

    .line 424
    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 425
    .local v2, "settingsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 426
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 427
    .local v5, "settingsInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countCategories()I

    move-result v6

    if-lez v6, :cond_0

    .line 428
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    goto :goto_1

    .line 431
    .end local v5    # "settingsInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 434
    :cond_1
    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    .line 435
    iput-object p3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:Landroidx/preference/PreferenceDataStore;

    .line 436
    iput-object p4, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mComponentNames:Ljava/util/List;

    .line 437
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->isPluginEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->setChecked(Z)V

    .line 439
    sget v3, Lcom/android/launcher3/R$layout;->switch_preference_with_settings:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->setWidgetLayoutResource(I)V

    .line 440
    return-void
.end method

.method private isEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:Landroidx/preference/PreferenceDataStore;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isPluginEnabled()Z
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mComponentNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 449
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    const/4 v0, 0x0

    return v0

    .line 452
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method synthetic lambda$onBindViewHolder$0$com-android-launcher3-settings-DeveloperOptionsFragment$PluginPreference(ZLandroid/view/View;)V
    .locals 5
    .param p1, "hasSettings"    # Z
    .param p2, "v"    # Landroid/view/View;

    .line 482
    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-android-launcher3-settings-DeveloperOptionsFragment$PluginPreference(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 492
    const/4 v1, 0x1

    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 477
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 479
    .local v0, "hasSettings":Z
    :goto_0
    sget v2, Lcom/android/launcher3/R$id;->settings:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 480
    sget v2, Lcom/android/launcher3/R$id;->divider:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    sget v1, Lcom/android/launcher3/R$id;->settings:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 494
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "shouldSendBroadcast":Z
    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mComponentNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 460
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:Landroidx/preference/PreferenceDataStore;

    invoke-static {v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    const/4 v0, 0x1

    .line 464
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 465
    :cond_1
    if-eqz v0, :cond_3

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    .line 467
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .line 468
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "package"

    invoke-static {v4, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    const-string v4, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 469
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->setChecked(Z)V

    .line 472
    const/4 v1, 0x1

    return v1
.end method
