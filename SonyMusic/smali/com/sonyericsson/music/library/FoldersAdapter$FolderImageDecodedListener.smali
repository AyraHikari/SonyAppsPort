.class Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;
.source "FoldersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/FoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderImageDecodedListener"
.end annotation


# instance fields
.field private final mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ILandroid/content/Context;)V
    .locals 0

    .line 156
    invoke-direct {p0, p2, p4, p5}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 157
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 158
    iput-object p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mUrl:Landroid/net/Uri;

    .line 159
    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 164
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->onDecoded(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
