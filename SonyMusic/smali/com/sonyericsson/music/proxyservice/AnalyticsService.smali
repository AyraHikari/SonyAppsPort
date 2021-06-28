.class public Lcom/sonyericsson/music/proxyservice/AnalyticsService;
.super Landroidx/core/app/JobIntentService;
.source "AnalyticsService.java"


# static fields
.field private static final SEND_ANALYTICS_ACTION:Ljava/lang/String; = "com.sonyericsson.music.SEND_ANALYTICS_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method private static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 27
    const-class v0, Lcom/sonyericsson/music/proxyservice/AnalyticsService;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public static sendAnalytics(Landroid/content/Context;)V
    .locals 5

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/music/proxyservice/AnalyticsService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-static {p0, v0}, Lcom/sonyericsson/music/proxyservice/AnalyticsService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    if-eqz p1, :cond_1

    .line 37
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicApplication;->sendAnalytics()V

    :cond_1
    return-void
.end method
