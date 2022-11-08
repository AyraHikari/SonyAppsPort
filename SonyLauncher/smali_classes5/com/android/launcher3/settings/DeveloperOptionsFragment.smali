.class public Lcom/android/launcher3/settings/DeveloperOptionsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DeveloperOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;
    }
.end annotation


# static fields
.field private static final ACTION_PLUGIN_SETTINGS:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_SETTINGS"

.field private static final PLUGIN_PERMISSION:Ljava/lang/String; = "com.android.systemui.permission.PLUGIN"


# instance fields
.field private mFlagTogglerPrefUi:Lcom/android/launcher3/config/FlagTogglerPrefUi;

.field private final mPluginReceiver:Landroid/content/BroadcastReceiver;

.field private mPluginsCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreferenceScreen(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfilterPreferences(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadPluginPrefs(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->loadPluginPrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 85
    new-instance v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addOnboardingPrefsCatergory()V
    .locals 7

    .line 375
    const-string v0, "Onboarding Flows"

    invoke-direct {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 376
    .local v0, "onboardingCategory":Landroidx/preference/PreferenceCategory;
    const-string v1, "Reset these if you want to see the education again."

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    sget-object v1, Lcom/android/launcher3/util/OnboardingPrefs;->ALL_PREF_KEYS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    .local v2, "titleAndKeys":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    .local v3, "title":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 380
    .local v4, "keys":[Ljava/lang/String;
    new-instance v5, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 381
    .local v5, "onboardingPref":Landroidx/preference/Preference;
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    const-string v6, "Tap to reset"

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v6, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 392
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 393
    .end local v2    # "titleAndKeys":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "onboardingPref":Landroidx/preference/Preference;
    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method private filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "pg"    # Landroidx/preference/PreferenceGroup;

    .line 121
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 122
    .local v0, "count":I
    const/4 v1, 0x0

    .line 123
    .local v1, "hidden":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    .line 124
    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 125
    .local v5, "preference":Landroidx/preference/Preference;
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    if-eqz v6, :cond_0

    .line 126
    move-object v3, v5

    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    goto :goto_2

    .line 128
    :cond_0
    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 130
    :cond_2
    :goto_1
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 123
    .end local v5    # "preference":Landroidx/preference/Preference;
    .end local v6    # "title":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_3
    if-eq v1, v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 138
    return-void
.end method

.method private initFlags()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/android/launcher3/config/FlagTogglerPrefUi;

    invoke-direct {v0, p0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mFlagTogglerPrefUi:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    .line 204
    const-string v1, "Feature flags"

    invoke-direct {p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->applyTo(Landroidx/preference/PreferenceGroup;)V

    .line 205
    return-void
.end method

.method static synthetic lambda$loadPluginPrefs$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 252
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$loadPluginPrefs$2(Ljava/lang/String;Landroid/util/Pair;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "p"    # Landroid/util/Pair;

    .line 277
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$loadPluginPrefs$3(Landroid/util/Pair;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Landroid/util/Pair;

    .line 283
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$onViewCreated$0(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p0, "bottomPadding"    # I
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 175
    nop

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 179
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v3, p0

    .line 175
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private loadPluginPrefs()V
    .locals 17

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 232
    iget-object v2, v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 234
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->hasPlugins(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    .line 236
    return-void

    .line 238
    :cond_1
    const-string v1, "Plugins"

    invoke-direct {v0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    .line 240
    sget-object v1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    .line 241
    .local v1, "manager":Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 242
    .local v2, "prefContext":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 244
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginActions()Ljava/util/Set;

    move-result-object v4

    .line 246
    .local v4, "pluginActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 249
    .local v5, "plugins":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;>;>;"
    const-string v6, "com.android.systemui.permission.PLUGIN"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x200

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 251
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 252
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 253
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 255
    .local v6, "pluginPermissionApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 256
    .local v8, "action":Ljava/lang/String;
    invoke-direct {v0, v8}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->toName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x240

    invoke-virtual {v3, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 259
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 260
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 261
    .local v13, "packageName":Ljava/lang/String;
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 262
    goto :goto_1

    .line 265
    :cond_2
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 266
    .local v14, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 267
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_3
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v16, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v12    # "info":Landroid/content/pm/ResolveInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, v16

    goto :goto_1

    .line 259
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move-object/from16 v16, v3

    .line 271
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 273
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginEnabler()Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    move-result-object v3

    .line 274
    .local v3, "enabler":Landroidx/preference/PreferenceDataStore;
    new-instance v7, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v2, v3}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;)V

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 287
    return-void
.end method

.method private maybeAddSandboxCategory()V
    .locals 10

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.quickstep.action.GESTURE_SANDBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 297
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 298
    .local v1, "launchSandboxIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 299
    return-void

    .line 301
    :cond_1
    const-string v2, "Gesture Navigation Sandbox"

    invoke-direct {p0, v2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    .line 302
    .local v2, "sandboxCategory":Landroidx/preference/PreferenceCategory;
    const-string v3, "Learn and practice navigation gestures"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 304
    .local v3, "launchOnboardingTutorialPreference":Landroidx/preference/Preference;
    const-string v4, "launchOnboardingTutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 305
    const-string v4, "Launch Onboarding Tutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    const-string v4, "Learn the basic navigation gestures."

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v4, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 316
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 317
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 318
    .local v4, "launchBackTutorialPreference":Landroidx/preference/Preference;
    const-string v5, "launchBackTutorial"

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 319
    const-string v5, "Launch Back Tutorial"

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    const-string v5, "Learn how to use the Back gesture"

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    new-instance v5, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 328
    new-instance v5, Landroidx/preference/Preference;

    invoke-direct {v5, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 329
    .local v5, "launchHomeTutorialPreference":Landroidx/preference/Preference;
    const-string v6, "launchHomeTutorial"

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 330
    const-string v6, "Launch Home Tutorial"

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    const-string v6, "Learn how to use the Home gesture"

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v6, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 339
    new-instance v6, Landroidx/preference/Preference;

    invoke-direct {v6, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 340
    .local v6, "launchOverviewTutorialPreference":Landroidx/preference/Preference;
    const-string v7, "launchOverviewTutorial"

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 341
    const-string v7, "Launch Overview Tutorial"

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    const-string v7, "Learn how to use the Overview gesture"

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v7, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 349
    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 350
    new-instance v7, Landroidx/preference/Preference;

    invoke-direct {v7, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 351
    .local v7, "launchAssistantTutorialPreference":Landroidx/preference/Preference;
    const-string v8, "launchAssistantTutorial"

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 352
    const-string v8, "Launch Assistant Tutorial"

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    const-string v8, "Learn how to use the Assistant gesture"

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v8, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 360
    invoke-virtual {v2, v7}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 361
    new-instance v8, Landroidx/preference/Preference;

    invoke-direct {v8, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 362
    .local v8, "launchSandboxModeTutorialPreference":Landroidx/preference/Preference;
    const-string v9, "launchSandboxMode"

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 363
    const-string v9, "Launch Sandbox Mode"

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    const-string v9, "Practice navigation gestures"

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v9, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v9, p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 371
    invoke-virtual {v2, v8}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 372
    return-void
.end method

.method private newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 191
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "category":Landroidx/preference/PreferenceCategory;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 193
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 195
    return-object v0
.end method

.method private toName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .line 397
    const-string v0, "com.android.systemui.action.PLUGIN_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 398
    const-string v2, "com.android.launcher3.action.PLUGIN_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 401
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 402
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method synthetic lambda$addOnboardingPrefsCatergory$11$com-android-launcher3-settings-DeveloperOptionsFragment([Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "preference"    # Landroidx/preference/Preference;

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 385
    .local v0, "sharedPrefsEdit":Landroid/content/SharedPreferences$Editor;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 386
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$loadPluginPrefs$4$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Context;Landroidx/preference/PreferenceDataStore;Landroid/util/Pair;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "enabler"    # Landroidx/preference/PreferenceDataStore;
    .param p3, "key"    # Landroid/util/Pair;
    .param p4, "si"    # Ljava/util/ArrayList;

    .line 275
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 278
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 279
    .local v1, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    new-instance v2, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    const/4 v3, 0x0

    .line 281
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, p1, v3, p2, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroidx/preference/PreferenceDataStore;Ljava/util/List;)V

    .line 282
    .local v2, "pref":Landroidx/preference/SwitchPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plugins: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    invoke-virtual {p4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 286
    .end local v2    # "pref":Landroidx/preference/SwitchPreference;
    :cond_0
    return-void
.end method

.method synthetic lambda$maybeAddSandboxCategory$10$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 366
    const-string v0, "SANDBOX_MODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$maybeAddSandboxCategory$5$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 308
    const-string v0, "HOME_NAVIGATION"

    const-string v1, "BACK_NAVIGATION"

    const-string v2, "OVERVIEW_NAVIGATION"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$maybeAddSandboxCategory$6$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 322
    const-string v0, "BACK_NAVIGATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$maybeAddSandboxCategory$7$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 333
    const-string v0, "HOME_NAVIGATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$maybeAddSandboxCategory$8$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 344
    const-string v0, "OVERVIEW_NAVIGATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$maybeAddSandboxCategory$9$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "launchSandboxIntent"    # Landroid/content/Intent;
    .param p2, "preference"    # Landroidx/preference/Preference;

    .line 355
    const-string v0, "ASSISTANT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mFlagTogglerPrefUi:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->initFlags()V

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->loadPluginPrefs()V

    .line 112
    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->maybeAddSandboxCategory()V

    .line 113
    invoke-direct {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->addOnboardingPrefsCatergory()V

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Developer Options"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mPluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mFlagTogglerPrefUi:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->mFlagTogglerPrefUi:Lcom/android/launcher3/config/FlagTogglerPrefUi;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/android/launcher3/config/FlagTogglerPrefUi;->onStop()V

    .line 227
    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 228
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 142
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    sget v0, Lcom/android/launcher3/R$id;->filter_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 144
    .local v0, "filterBox":Landroid/widget/EditText;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 145
    new-instance v1, Lcom/android/launcher3/settings/DeveloperOptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$2;-><init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "filter":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v1    # "filter":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 173
    .local v1, "listView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 174
    .local v2, "bottomPadding":I
    new-instance v3, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 182
    return-void
.end method
