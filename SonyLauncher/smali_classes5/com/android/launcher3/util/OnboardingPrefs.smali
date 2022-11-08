.class public Lcom/android/launcher3/util/OnboardingPrefs;
.super Ljava/lang/Object;
.source "OnboardingPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/OnboardingPrefs$EventCountKey;,
        Lcom/android/launcher3/util/OnboardingPrefs$EventBoolKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_VISITED_COUNT:Ljava/lang/String; = "launcher.all_apps_visited_count"

.field public static final ALL_PREF_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_BOUNCE_COUNT:Ljava/lang/String; = "launcher.home_bounce_count"

.field public static final HOME_BOUNCE_SEEN:Ljava/lang/String; = "launcher.apps_view_shown"

.field public static final HOTSEAT_DISCOVERY_TIP_COUNT:Ljava/lang/String; = "launcher.hotseat_discovery_tip_count"

.field public static final HOTSEAT_LONGPRESS_TIP_SEEN:Ljava/lang/String; = "launcher.hotseat_longpress_tip_seen"

.field private static final MAX_COUNTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_KEYBOARD_EDU_SEEN:Ljava/lang/String; = "launcher.search_edu_seen"

.field public static final SEARCH_ONBOARDING_COUNT:Ljava/lang/String; = "launcher.search_onboarding_count"

.field public static final SEARCH_SNACKBAR_COUNT:Ljava/lang/String; = "launcher.keyboard_snackbar_count"

.field public static final TASKBAR_EDU_SEEN:Ljava/lang/String; = "launcher.taskbar_edu_seen"


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 47
    const-string v0, "launcher.apps_view_shown"

    const-string v1, "launcher.home_bounce_count"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "launcher.hotseat_discovery_tip_count"

    const-string v2, "launcher.hotseat_longpress_tip_seen"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "launcher.search_edu_seen"

    const-string v12, "launcher.keyboard_snackbar_count"

    const-string v13, "launcher.search_onboarding_count"

    filled-new-array {v2, v12, v13}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "launcher.taskbar_edu_seen"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v14, "launcher.all_apps_visited_count"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v11

    const-string v2, "All Apps Bounce"

    const-string v4, "Hybrid Hotseat Education"

    const-string v6, "Search Education"

    const-string v8, "Taskbar Education"

    const-string v10, "All Apps Visited Count"

    invoke-static/range {v2 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/util/OnboardingPrefs;->ALL_PREF_KEYS:Ljava/util/Map;

    .line 85
    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 86
    .local v2, "maxCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->MAX_COUNTS:Ljava/util/Map;

    .line 93
    .end local v2    # "maxCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    .local p1, "launcher":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 100
    iput-object p2, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 101
    return-void
.end method

.method private hasReachedMaxCount(ILjava/lang/String;)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "eventKey"    # Ljava/lang/String;

    .line 114
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->MAX_COUNTS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 105
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasReachedMaxCount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventKey"    # Ljava/lang/String;

    .line 110
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->getCount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public incrementEventCount(Ljava/lang/String;)Z
    .locals 3
    .param p1, "eventKey"    # Ljava/lang/String;

    .line 135
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->getCount(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "count":I
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 137
    return v2

    .line 139
    :cond_0
    add-int/2addr v0, v2

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public markChecked(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 126
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void
.end method

.method public setEventCount(ILjava/lang/String;)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "eventKey"    # Ljava/lang/String;

    .line 150
    .local p0, "this":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
