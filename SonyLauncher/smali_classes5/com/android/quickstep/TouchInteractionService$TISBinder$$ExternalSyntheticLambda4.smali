.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput p2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$3:I

    iput-boolean p5, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$3:I

    iget-boolean v4, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$disable$7$com-android-quickstep-TouchInteractionService$TISBinder(IIIZ)V

    return-void
.end method
