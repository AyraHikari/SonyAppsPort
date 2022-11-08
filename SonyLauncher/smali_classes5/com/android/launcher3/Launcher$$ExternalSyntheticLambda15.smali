.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->lambda$crossFadeWithPreviousAppearance$16$com-android-launcher3-Launcher(Landroid/widget/ImageView;)V

    return-void
.end method
