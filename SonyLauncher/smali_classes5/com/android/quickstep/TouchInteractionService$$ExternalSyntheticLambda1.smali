.class public final synthetic Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/quickstep/AbsSwipeUpHandler$Factory;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->$r8$lambda$wbHAvvAUyJ491efmIeRiWUak21M(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p1

    return-object p1
.end method
