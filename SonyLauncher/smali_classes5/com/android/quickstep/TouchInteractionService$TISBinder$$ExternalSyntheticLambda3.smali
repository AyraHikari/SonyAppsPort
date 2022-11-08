.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-boolean p2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-boolean v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$1$com-android-quickstep-TouchInteractionService$TISBinder(Z)V

    return-void
.end method
