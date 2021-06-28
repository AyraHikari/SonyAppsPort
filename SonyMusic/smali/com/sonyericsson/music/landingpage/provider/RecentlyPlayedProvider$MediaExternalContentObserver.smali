.class final Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;
.super Landroid/database/ContentObserver;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaExternalContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    const/4 p1, 0x0

    .line 964
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 969
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;

    .line 970
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 969
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
