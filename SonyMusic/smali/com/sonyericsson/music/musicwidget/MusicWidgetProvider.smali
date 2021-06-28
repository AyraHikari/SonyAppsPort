.class public Lcom/sonyericsson/music/musicwidget/MusicWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MusicWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 34
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->getMediaBrowserConnection(Landroid/content/Context;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    move-result-object p1

    .line 35
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.sonyericsson.music.service.internal.ACTION_POPULATE_WIDGET"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->addIntent(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
