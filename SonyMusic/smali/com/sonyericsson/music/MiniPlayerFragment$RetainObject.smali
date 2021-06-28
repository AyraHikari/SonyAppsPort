.class Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainObject"
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->mUri:Landroid/net/Uri;

    return-object v0
.end method
