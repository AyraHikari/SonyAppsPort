.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$new$0$com-android-launcher3-graphics-PreviewSurfaceRenderer()Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    return-object v0
.end method
