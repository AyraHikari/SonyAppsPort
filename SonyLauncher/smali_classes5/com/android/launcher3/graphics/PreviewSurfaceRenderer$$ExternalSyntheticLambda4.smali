.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControlViewHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    return-void
.end method
