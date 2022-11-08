.class public Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PinnedAppsAdapter.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;
    }
.end annotation


# static fields
.field private static final PINNED_APPS_KEY:Ljava/lang/String; = "pinned_apps"


# instance fields
.field private final mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

.field private final mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mPinnedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$3sfpzlgcc4UjgX2A5l6djbGK41w(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    return-void
.end method

.method public static synthetic $r8$lambda$FMDRoOXF8LgdsypefUbb2EvlA9I(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->parseComponentKey(Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wkeafRoCl-9Hs86hu3wQfHInRCg(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->encode(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncher(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->update(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/allapps/AllAppsStore;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .param p2, "allAppsStore"    # Lcom/android/launcher3/allapps/AllAppsStore;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 72
    invoke-virtual {p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 73
    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 74
    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 75
    const-string v0, "pinned_apps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 76
    new-instance v0, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    .line 78
    new-instance v0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 79
    return-void
.end method

.method private createFilteredAppsList()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda7;-><init>()V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda8;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method private encode(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Lcom/android/launcher3/util/ComponentKey;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 202
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method private parseComponentKey(Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .line 185
    :try_start_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 188
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    aget-object v2, v0, v2

    .line 189
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v1

    .local v1, "user":Landroid/os/UserHandle;
    goto :goto_0

    .line 191
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 193
    .restart local v1    # "user":Landroid/os/UserHandle;
    :goto_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 194
    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v2, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 195
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private update(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p2, "op":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 173
    .local v0, "key":Lcom/android/launcher3/util/ComponentKey;
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    .line 175
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v1, "copy":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/ComponentKey;>;"
    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 181
    .end local v1    # "copy":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 169
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/model/data/AppInfo;
    .locals 1
    .param p1, "position"    # I

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->getItem(I)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSystemShortcut(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 209
    new-instance v6, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    .line 210
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)V

    .line 209
    return-object v6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 132
    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 133
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .local v0, "icon":Lcom/android/launcher3/BubbleTextView;
    goto :goto_0

    .line 135
    .end local v0    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->app_icon:I

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 137
    .restart local v0    # "icon":Lcom/android/launcher3/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 141
    .local v1, "padding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 144
    .end local v1    # "padding":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 145
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pinned_apps"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method synthetic lambda$onSharedPreferenceChanged$0$com-android-launcher3-secondarydisplay-PinnedAppsAdapter(Ljava/util/Set;)V
    .locals 1
    .param p1, "apps"    # Ljava/util/Set;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    .line 97
    return-void
.end method

.method synthetic lambda$onSharedPreferenceChanged$1$com-android-launcher3-secondarydisplay-PinnedAppsAdapter(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    .line 90
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda2;-><init>()V

    .line 91
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 93
    .local v0, "apps":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/ComponentKey;>;"
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 98
    return-void
.end method

.method synthetic lambda$update$2$com-android-launcher3-secondarydisplay-PinnedAppsAdapter(Ljava/util/Set;)V
    .locals 3
    .param p1, "copy"    # Ljava/util/Set;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 177
    const-string v2, "pinned_apps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 86
    const-string v0, "pinned_apps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 100
    :cond_0
    return-void
.end method
