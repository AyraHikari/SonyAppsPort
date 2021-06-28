.class Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;
.super Ljava/lang/Object;
.source "MyArtPagerAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyAdapter"
.end annotation


# static fields
.field private static final EMPTY_ID:Ljava/lang/String; = "id:empty"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 0

    if-eqz p4, :cond_0

    .line 240
    check-cast p4, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    goto :goto_0

    .line 242
    :cond_0
    new-instance p4, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    invoke-direct {p4, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;-><init>(Landroid/content/Context;)V

    .line 244
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$300(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$400(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyBitmapChanged(Landroid/graphics/Bitmap;I)V

    return-object p4
.end method

.method public destroyView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getArtistName(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getId(I)Ljava/lang/String;
    .locals 0

    const-string p1, "id:empty"

    return-object p1
.end method

.method public getPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrackName(I)Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$EmptyAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    iget-object p1, p1, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->mNoContentMessageLine1:Ljava/lang/String;

    return-object p1
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isDefaultBlur(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
