.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput p2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;->f$1:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$2$com-android-quickstep-TouchInteractionService$TISBinder(F)V

    return-void
.end method
