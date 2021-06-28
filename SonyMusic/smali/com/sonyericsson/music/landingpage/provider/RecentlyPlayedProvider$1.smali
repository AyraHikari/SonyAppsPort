.class Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->access$000(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;->access$100(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V

    .line 101
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$1;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    .line 102
    invoke-virtual {p2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method
