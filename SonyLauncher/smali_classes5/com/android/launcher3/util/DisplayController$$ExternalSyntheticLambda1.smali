.class public final synthetic Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/DisplayController;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/DisplayController;

    iput-object p2, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/DisplayController;->lambda$handleInfoChange$1$com-android-launcher3-util-DisplayController(Landroid/content/Context;I)V

    return-void
.end method
