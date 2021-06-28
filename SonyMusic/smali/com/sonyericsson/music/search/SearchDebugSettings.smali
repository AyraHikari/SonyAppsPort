.class public Lcom/sonyericsson/music/search/SearchDebugSettings;
.super Ljava/lang/Object;
.source "SearchDebugSettings.java"


# static fields
.field private static final KEY_SHOW_PRIORITY:Ljava/lang/String; = "show_search_priority"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchDebugSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchDebugSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchDebugSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicApplication;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setShowPriority(Z)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchDebugSettings;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_search_priority"

    .line 35
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public showPriority()Z
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchDebugSettings;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "show_search_priority"

    .line 48
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method
