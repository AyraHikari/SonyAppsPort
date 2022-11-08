.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->lambda$onDragEnd$0(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method
