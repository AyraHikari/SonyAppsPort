.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelData$2$com-android-launcher3-graphics-PreviewSurfaceRenderer(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method
