.class Lcom/sonyericsson/music/landingpage/RecentlyPlayedLoader;
.super Lcom/sonyericsson/music/landingpage/CategoryLoader;
.source "RecentlyPlayedLoader.java"


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = "timestamp DESC"


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 10

    .line 23
    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "timestamp DESC"

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 25
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Landroid/app/Activity;ZI)I

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/music/landingpage/CategoryLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 26
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/CategoryLoader;->getUpperLimit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->setMaxNumberOfItems(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method
