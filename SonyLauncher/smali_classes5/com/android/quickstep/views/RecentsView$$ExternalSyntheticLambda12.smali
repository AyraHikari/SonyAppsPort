.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRecentTasks()V

    return-void
.end method
