.class public final synthetic Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/DisplayController;

.field public final synthetic f$1:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/DisplayController;

    iput-object p2, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$1:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$1:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->lambda$onIntent$0$com-android-launcher3-util-DisplayController(Landroid/view/Display;)V

    return-void
.end method
