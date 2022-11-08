.class public Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final FLAGS_SHOULD_LISTEN:I = 0xe

.field private static final FLAG_ACTIVITY_RESUMED:I = 0x8

.field private static final FLAG_ACTIVITY_STARTED:I = 0x4

.field private static final FLAG_LISTENING:I = 0x1

.field private static final FLAG_STATE_IS_NORMAL:I = 0x2

.field private static final KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field private static final SPLASH_SCREEN_STYLE_EMPTY:I


# instance fields
.field private mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

.field private final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mPendingViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/PendingAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetRemovedCallback"    # Ljava/util/function/IntConsumer;

    .line 86
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    .line 87
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    .line 89
    return-void
.end method

.method private getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "widgetId"    # I

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 333
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 335
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_1

    return-object v1

    .line 336
    :cond_1
    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 337
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    const-string v4, "android.activity.splashScreenStyle"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    return-object v1
.end method

.method static synthetic lambda$sendActionCancelled$0(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p1, "requestCode"    # I

    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p2, "requestCode"    # I

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method private setShouldListenFlag(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "on"    # Z

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result v0

    .line 157
    .local v0, "listening":Z
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    const/16 v2, 0xe

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startListening()V

    goto :goto_1

    .line 160
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->stopListening()V

    .line 164
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addPendingView(ILcom/android/launcher3/widget/PendingAppWidgetHostView;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "view"    # Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public allocateAppWidgetId()I
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    return v0
.end method

.method public clearViews()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 285
    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 218
    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "lahv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 221
    sget-object v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    .line 222
    return-object v0

    .line 223
    .end local v0    # "lahv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "view":Lcom/android/launcher3/widget/DeferredAppWidgetHostView;
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 226
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    return-object v0

    .line 230
    .end local v0    # "view":Lcom/android/launcher3/widget/DeferredAppWidgetHostView;
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 240
    .local v1, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    if-nez v1, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v1

    .line 243
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 244
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 245
    return-object v1

    .line 233
    .end local v1    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteAppWidgetId(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 277
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 279
    return-void
.end method

.method public isListening()Z
    .locals 2

    .line 142
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAppWidgetRemoved(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 273
    return-void
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 97
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 99
    .end local v0    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v0    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 257
    .local v0, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 260
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 261
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;

    .line 207
    .local v1, "callback":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;
    invoke-interface {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    .line 208
    .end local v1    # "callback":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;
    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public setActivityResumed(Z)V
    .locals 1
    .param p1, "isResumed"    # Z

    .line 184
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    .line 185
    return-void
.end method

.method public setActivityStarted(Z)V
    .locals 1
    .param p1, "isStarted"    # Z

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    .line 178
    return-void
.end method

.method public setStateIsNormal(Z)V
    .locals 1
    .param p1, "isNormal"    # Z

    .line 170
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    .line 171
    return-void
.end method

.method public startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 3
    .param p1, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p4, "requestCode"    # I

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 297
    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "appWidgetProviderProfile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p4}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    return-void
.end method

.method public startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V
    .locals 8
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "widgetId"    # I
    .param p3, "requestCode"    # I

    .line 317
    :try_start_0
    const-string v0, "Main"

    const-string v1, "start: startConfigActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v5, 0x0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v7

    .line 318
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/RuntimeException;
    sget v1, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V

    .line 324
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 110
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    .line 112
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 126
    .local v1, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    instance-of v2, v1, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 124
    .end local v1    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 130
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    .line 138
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 139
    return-void
.end method
