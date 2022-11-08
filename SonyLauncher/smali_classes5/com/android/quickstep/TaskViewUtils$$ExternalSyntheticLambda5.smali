.class public final synthetic Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field public final synthetic f$1:Landroid/graphics/Matrix;

.field public final synthetic f$2:[Landroid/graphics/Matrix;

.field public final synthetic f$3:[Landroid/graphics/Matrix;

.field public final synthetic f$4:[Landroid/graphics/Matrix;

.field public final synthetic f$5:[Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$2:[Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$3:[Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$4:[Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$5:[Lcom/android/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$2:[Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$3:[Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$4:[Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;->f$5:[Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$1([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void
.end method
