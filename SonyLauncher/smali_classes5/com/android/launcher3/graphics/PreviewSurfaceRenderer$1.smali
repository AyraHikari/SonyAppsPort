.class Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;
.super Lcom/android/launcher3/model/LoaderTask;
.source "PreviewSurfaceRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "bgAllAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p5, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;
    .param p6, "results"    # Lcom/android/launcher3/model/LoaderResults;

    .line 161
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p7, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-android-launcher3-graphics-PreviewSurfaceRenderer$1(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 3
    .param p1, "previewContext"    # Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->-$$Nest$mrenderView(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->-$$Nest$fgetmOnDestroyCallbacks(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public run()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->-$$Nest$fgetmIdp(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 166
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    const-string v1, "screen = 0 or container = -101"

    .line 170
    .local v1, "query":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or screen = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->PREVIEW_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    .line 177
    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    new-instance v4, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
