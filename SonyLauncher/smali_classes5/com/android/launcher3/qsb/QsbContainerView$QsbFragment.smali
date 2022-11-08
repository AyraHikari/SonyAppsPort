.class public Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
.super Lcom/android/launcher3/graphics/FragmentWithPreview;
.source "QsbContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/qsb/QsbContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QsbFragment"
.end annotation


# static fields
.field public static final QSB_WIDGET_HOST_ID:I = 0x402

.field private static final REQUEST_BIND_QSB:I = 0x1


# instance fields
.field protected mKeyWidgetId:Ljava/lang/String;

.field private mOrientation:I

.field private mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

.field private mQsbEnabled:Z

.field private mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

.field protected mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mWrapper:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$aIa14faaZ_VmF_rVnHtuT5xIJ6E(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;-><init>()V

    .line 162
    const-string v0, "qsb_widget_id"

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    return-void
.end method

.method private createQsb(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 202
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createBindOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "opts":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 210
    .local v3, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 211
    .local v4, "widgetId":I
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 212
    .local v5, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v7, 0x1

    if-eqz v5, :cond_1

    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 213
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    nop

    .line 215
    .local v1, "isWidgetBound":Z
    :goto_0
    move v8, v4

    .line 216
    .local v8, "oldWidgetId":I
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->isInPreviewMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 217
    if-le v4, v6, :cond_2

    .line 219
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v6}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->deleteHost()V

    .line 222
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v6}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 223
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 224
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 223
    invoke-virtual {v3, v4, v6, v9, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->deleteAppWidgetId(I)V

    .line 227
    const/4 v4, -0x1

    .line 230
    :cond_3
    if-eq v8, v4, :cond_4

    .line 231
    invoke-direct {p0, v4}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->saveWidgetId(I)V

    .line 235
    :cond_4
    if-eqz v1, :cond_6

    .line 236
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    iget-object v7, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v2, v4, v7}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/qsb/QsbWidgetHostView;

    iput-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    .line 238
    sget v7, Lcom/android/launcher3/R$id;->qsb_widget:I

    invoke-virtual {v6, v7}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->setId(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->isInPreviewMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 241
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 242
    invoke-virtual {v6, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 241
    invoke-static {v6, v0}, Lcom/android/launcher3/qsb/QsbContainerView;->-$$Nest$smcontainsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 243
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 246
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    return-object v6

    .line 250
    :cond_6
    invoke-virtual {p0, p1, v7}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    return-object v6
.end method

.method static synthetic lambda$createHost$0(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 179
    new-instance v0, Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-direct {v0, p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private rebindFragment()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->isQsbEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createQsb(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 298
    :cond_1
    return-void
.end method

.method private saveWidgetId(I)V
    .locals 2
    .param p1, "widgetId"    # I

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    return-void
.end method

.method private updateQsb(Z)V
    .locals 2
    .param p1, "isQsbEnabled"    # Z

    .line 301
    if-nez p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 303
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createQsb(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 309
    :cond_1
    return-void
.end method


# virtual methods
.method protected createBindOptions()Landroid/os/Bundle;
    .locals 5

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 317
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected createHost()Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
    .locals 5

    .line 178
    new-instance v0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    const/16 v4, 0x402

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    return-object v0
.end method

.method protected getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "showSetupIcon"    # Z

    .line 323
    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "v":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 325
    sget v1, Lcom/android/launcher3/R$id;->btn_qsb_setup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, "setupButton":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    new-instance v2, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    .end local v1    # "setupButton":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method protected getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public isQsbEnabled()Z
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$getDefaultView$1$com-android-launcher3-qsb-QsbContainerView$QsbFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v2"    # Landroid/view/View;

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    .line 329
    invoke-virtual {v1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 330
    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 259
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 260
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 261
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->saveWidgetId(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->deleteHost()V

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 189
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->isQsbEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbEnabled:Z

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->startListening()V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createQsb(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->stopListening()V

    .line 285
    invoke-super {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onDestroy()V

    .line 286
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createHost()Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mOrientation:I

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onResume()V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->isReinflateRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->isQsbEnabled()Z

    move-result v0

    .line 276
    .local v0, "isQsbEnabled":Z
    iget-boolean v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbEnabled:Z

    if-eq v1, v0, :cond_1

    .line 277
    iput-boolean v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbEnabled:Z

    .line 278
    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->updateQsb(Z)V

    .line 280
    :cond_1
    return-void
.end method
