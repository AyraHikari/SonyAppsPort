.class public Lcom/android/quickstep/util/ImageActionUtils;
.super Ljava/lang/Object;
.source "ImageActionUtils.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.launcher.overview.fileprovider"

.field private static final BASE_NAME:Ljava/lang/String; = "overview_image_"

.field private static final FILE_LIFE:J = 0x5265c00L

.field private static final SUB_FOLDER:Ljava/lang/String; = "Overview"

.field private static final TAG:Ljava/lang/String; = "ImageActionUtils"


# direct methods
.method public static synthetic $r8$lambda$iWnfhZSJ59KYE-Ax__KXAH75ft8(Landroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/ImageActionUtils;->getShareIntentForImageUri(Landroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearOldCacheFiles(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 250
    .local v0, "src":Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v1

    .line 253
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    return-object p0

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_2

    .line 257
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 257
    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 262
    :cond_2
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 263
    .local v1, "picture":Landroid/graphics/Picture;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 264
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static getImageUri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tag"    # Ljava/lang/String;

    .line 223
    invoke-static {p2}, Lcom/android/quickstep/util/ImageActionUtils;->clearOldCacheFiles(Landroid/content/Context;)V

    .line 224
    invoke-static {p0, p1}, Lcom/android/quickstep/util/ImageActionUtils;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "croppedBitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    .line 226
    .local v1, "cropHash":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overview_image_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "baseName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "Overview"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 229
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 231
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cropHash":I
    .end local v2    # "baseName":Ljava/lang/String;
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "crop":Landroid/graphics/Rect;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "tag":Ljava/lang/String;
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 233
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cropHash":I
    .restart local v2    # "baseName":Ljava/lang/String;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "crop":Landroid/graphics/Rect;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 234
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Error saving image"

    invoke-static {p3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    const-string v5, "com.sonymobile.launcher.overview.fileprovider"

    invoke-static {p2, v5, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private static getShareIntentForImageUri(Landroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    .line 279
    :cond_0
    new-instance v0, Landroid/content/ClipData;

    new-instance v1, Landroid/content/ClipDescription;

    const-string v2, "image/png"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-direct {v1, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v1, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 282
    .local v0, "clipdata":Landroid/content/ClipData;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 284
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 285
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 287
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 289
    new-array v1, v5, [Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method static synthetic lambda$clearOldCacheFiles$4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;

    .line 295
    const-string v0, "overview_image_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$clearOldCacheFiles$5(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Overview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 296
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 297
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 298
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 299
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 297
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method static synthetic lambda$persistBitmapAndStartActivity$2(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "scaledImage"    # Landroid/view/View;

    .line 198
    const/4 v0, 0x0

    aget-object v0, p1, v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 199
    const-string v2, "screenshot_preview_image"

    invoke-static {v1, p2, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 198
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$persistBitmapAndStartActivity$3(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "scaledImage"    # Landroid/view/View;

    .line 203
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 204
    const-string v1, "screenshot_preview_image"

    invoke-static {v0, p2, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$startShareActivity$0(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapSupplier"    # Ljava/util/function/Supplier;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "tag"    # Ljava/lang/String;

    .line 131
    nop

    .line 132
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 131
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/quickstep/util/ImageActionUtils;->persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$startShareActivity$1(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapSupplier"    # Ljava/util/function/Supplier;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "sharedElement"    # Landroid/view/View;

    .line 147
    nop

    .line 148
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 147
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/quickstep/util/ImageActionUtils;->persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/content/Intent;",
            "Ljava/util/function/BiFunction<",
            "Landroid/net/Uri;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 158
    .local p4, "uriToIntentMap":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/net/Uri;Landroid/content/Intent;[Landroid/content/Intent;>;"
    const/4 v6, 0x0

    move-object v0, v6

    check-cast v0, Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/quickstep/util/ImageActionUtils;->persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public static persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "scaledImage"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/content/Intent;",
            "Ljava/util/function/BiFunction<",
            "Landroid/net/Uri;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 194
    .local p4, "uriToIntentMap":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/net/Uri;Landroid/content/Intent;[Landroid/content/Intent;>;"
    invoke-static {p1, p2, p0, p5}, Lcom/android/quickstep/util/ImageActionUtils;->getImageUri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p4, v0, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 197
    .local v0, "intents":[Landroid/content/Intent;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 198
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p6}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p6}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 207
    :goto_0
    return-void
.end method

.method public static persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "exceptionCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/content/Intent;",
            "Ljava/util/function/BiFunction<",
            "Landroid/net/Uri;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 170
    .local p4, "uriToIntentMap":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/net/Uri;Landroid/content/Intent;[Landroid/content/Intent;>;"
    invoke-static {p1, p2, p0, p5}, Lcom/android/quickstep/util/ImageActionUtils;->getImageUri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p4, v0, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 174
    .local v0, "intents":[Landroid/content/Intent;
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ImageActionUtils"

    const-string v3, "No activity found to receive image intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz p6, :cond_1

    .line 182
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 185
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static saveScreenshot(Lcom/android/quickstep/SystemUiProxy;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1
    .param p0, "systemUiProxy"    # Lcom/android/quickstep/SystemUiProxy;
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "screenshotBounds"    # Landroid/graphics/Rect;
    .param p3, "visibleInsets"    # Landroid/graphics/Insets;
    .param p4, "task"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 80
    nop

    .line 81
    invoke-static {p1}, Lcom/android/internal/util/ScreenshotHelper$HardwareBitmapBundler;->hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/quickstep/SystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 83
    return-void
.end method

.method public static shareImage(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p4, "appTarget"    # Landroid/app/prediction/AppTarget;
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/app/prediction/AppTarget;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    .local p1, "bitmapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v0, "crop":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v0, p0, p5}, Lcom/android/quickstep/util/ImageActionUtils;->getImageUri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ClipData;

    new-instance v4, Landroid/content/ClipDescription;

    const-string v5, "image/png"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-direct {v4, v7, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v3, v4, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 102
    .local v3, "clipdata":Landroid/content/ClipData;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v6, Landroid/content/ComponentName;

    .line 103
    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v6, 0x10000000

    .line 104
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v6, 0x1

    .line 105
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 107
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 108
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.shortcut.ID"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->fixUris(I)V

    .line 114
    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void
.end method

.method public static startShareActivity(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    .local p1, "bitmapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "No snapshot available, not starting share."

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public static startShareActivity(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "sharedElement"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 142
    .local p1, "bitmapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "No snapshot available, not starting share."

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
