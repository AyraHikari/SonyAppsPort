.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/launcher3/model/BgDataModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/BgDataModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelData$1$com-android-launcher3-graphics-PreviewSurfaceRenderer(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method
