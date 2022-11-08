.class public final synthetic Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    invoke-virtual {v0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->onLauncherResume()V

    return-void
.end method
