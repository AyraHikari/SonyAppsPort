.class public final synthetic Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/views/FloatingIconView;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/FloatingIconView;->lambda$checkIconResult$1$com-android-launcher3-views-FloatingIconView(Landroid/os/CancellationSignal;Landroid/view/View;)V

    return-void
.end method
