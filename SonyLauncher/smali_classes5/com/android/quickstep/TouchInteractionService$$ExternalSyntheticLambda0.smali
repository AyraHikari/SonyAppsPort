.class public final synthetic Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/TouchInteractionService;

    check-cast p1, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;

    invoke-static {v0, p1}, Lcom/android/quickstep/TouchInteractionService;->$r8$lambda$qEYihW-6vlnBKqYCx47rCxOt1AA(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method
