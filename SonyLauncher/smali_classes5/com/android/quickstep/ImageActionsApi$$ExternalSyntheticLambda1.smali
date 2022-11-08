.class public final synthetic Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/ImageActionsApi;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/ImageActionsApi;

    iput-object p2, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/ImageActionsApi;->lambda$addImageAndSendIntent$1$com-android-quickstep-ImageActionsApi(Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    return-void
.end method
