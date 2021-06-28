.class public Lcom/sonyericsson/music/landingpage/ResourceDrawableSource;
.super Ljava/lang/Object;
.source "ResourceDrawableSource.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/DrawableSource;


# instance fields
.field private final mResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/sonyericsson/music/landingpage/ResourceDrawableSource;->mResId:I

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/sonyericsson/music/ui/DrawableSource$OnDrawableListener;)Z
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/landingpage/ResourceDrawableSource;->mResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/PaletteUtils;->getBackgroundColor(Landroid/graphics/Bitmap;Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/PaletteUtils;->normalizeCardViewColor(I)I

    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/music/landingpage/ResourceDrawableSource;->mResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 35
    invoke-static {v0}, Lcom/sonyericsson/music/common/PaletteUtils;->normalizeCardViewColor(I)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/sonyericsson/music/ui/DrawableSource$OnDrawableListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
