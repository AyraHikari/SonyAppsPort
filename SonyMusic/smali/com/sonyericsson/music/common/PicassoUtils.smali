.class public Lcom/sonyericsson/music/common/PicassoUtils;
.super Ljava/lang/Object;
.source "PicassoUtils.java"


# static fields
.field static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 144
    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 150
    invoke-virtual {p0, p3, p3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->onlyScaleDown()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 156
    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p3, p3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->onlyScaleDown()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, -0x1

    .line 30
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 40
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->setNetworkPolicies(Landroid/content/Context;Lcom/squareup/picasso/RequestCreator;I)V

    return-object p1
.end method

.method public static getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, -0x1

    .line 45
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 55
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->setNetworkPolicies(Landroid/content/Context;Lcom/squareup/picasso/RequestCreator;I)V

    return-object p1
.end method

.method public static getRequestCreatorForUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, -0x1

    .line 60
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCreatorForUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 65
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 70
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/PicassoUtils;->setNetworkPolicies(Landroid/content/Context;Lcom/squareup/picasso/RequestCreator;I)V

    return-object p1
.end method

.method public static invalidate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->invalidate(Landroid/net/Uri;)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;ILcom/squareup/picasso/Callback;)V
    .locals 1

    .line 131
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 132
    sget-object p3, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {p1, p3, v0}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    .line 134
    invoke-virtual {p1, p0, p0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->onlyScaleDown()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    if-eqz p4, :cond_0

    .line 136
    invoke-virtual {p1, p2, p4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 1

    const/4 v0, -0x1

    .line 126
    invoke-static {p0, p1, p2, v0, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;ILcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Lcom/squareup/picasso/Target;)V
    .locals 1

    const/4 v0, -0x1

    .line 112
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Lcom/squareup/picasso/Target;I)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/io/File;Lcom/squareup/picasso/Target;I)V
    .locals 1

    .line 117
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForFile(Landroid/content/Context;Ljava/io/File;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 118
    sget-object p3, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {p1, p3, v0}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    .line 119
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    .line 120
    invoke-virtual {p1, p0, p0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->onlyScaleDown()Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    .line 121
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Callback;)V
    .locals 0

    .line 102
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 103
    sget-object p1, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {p0, p1, p3}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    if-eqz p4, :cond_0

    .line 105
    invoke-virtual {p0, p2, p4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 1

    const/4 v0, -0x1

    .line 97
    invoke-static {p0, p1, p2, v0, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/picasso/Target;)V
    .locals 1

    const/4 v0, -0x1

    .line 85
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/picasso/Target;I)V

    return-void
.end method

.method public static loadBitmapNoStore(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/picasso/Target;I)V
    .locals 0

    .line 90
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/music/common/PicassoUtils;->getRequestCreatorForPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 91
    sget-object p1, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {p0, p1, p3}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    .line 92
    invoke-virtual {p0, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method

.method public static setNetworkPolicies(Landroid/content/Context;Lcom/squareup/picasso/RequestCreator;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    invoke-static {p0, p2}, Lcom/sonyericsson/music/common/DataSaverUtil;->isAllowedToSendData(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 80
    sget-object p0, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/squareup/picasso/NetworkPolicy;

    invoke-virtual {p1, p0, p2}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    :cond_0
    return-void
.end method
