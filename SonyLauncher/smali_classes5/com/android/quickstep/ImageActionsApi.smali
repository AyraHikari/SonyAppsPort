.class public Lcom/android/quickstep/ImageActionsApi;
.super Ljava/lang/Object;
.source "ImageActionsApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sonymobile.launcherImageActionsApi"


# instance fields
.field protected final mBitmapSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "bitmapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    .line 58
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 59
    return-void
.end method

.method private addImageAndSendIntent(Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "setData"    # Z
    .param p4, "exceptionCallback"    # Ljava/lang/Runnable;

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "com.sonymobile.launcherImageActionsApi"

    const-string v1, "No snapshot available, not starting share."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method static synthetic lambda$addImageAndSendIntent$0(ZLandroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 2
    .param p0, "setData"    # Z
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intentForUri"    # Landroid/content/Intent;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 95
    :cond_0
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    :goto_0
    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-object v0
.end method


# virtual methods
.method synthetic lambda$addImageAndSendIntent$1$com-android-quickstep-ImageActionsApi(Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "setData"    # Z
    .param p4, "exceptionCallback"    # Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    .line 90
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3}, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 89
    const-string v5, "com.sonymobile.launcherImageActionsApi"

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/quickstep/util/ImageActionUtils;->persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "screenshotBounds"    # Landroid/graphics/Rect;
    .param p3, "visibleInsets"    # Landroid/graphics/Insets;
    .param p4, "task"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/quickstep/util/ImageActionUtils;->saveScreenshot(Lcom/android/quickstep/SystemUiProxy;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 120
    return-void
.end method

.method public shareAsDataWithExplicitIntent(Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "exceptionCallback"    # Ljava/lang/Runnable;

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/quickstep/ImageActionsApi;->addImageAndSendIntent(Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public shareImage(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;)V
    .locals 6
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "appTarget"    # Landroid/app/prediction/AppTarget;

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    const-string v5, "com.sonymobile.launcherImageActionsApi"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/util/ImageActionUtils;->shareImage(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public shareWithExplicitIntent(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/ImageActionsApi;->addImageAndSendIntent(Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public startShareActivity(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    const/4 v2, 0x0

    const-string v3, "com.sonymobile.launcherImageActionsApi"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/quickstep/util/ImageActionUtils;->startShareActivity(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    return-void
.end method
