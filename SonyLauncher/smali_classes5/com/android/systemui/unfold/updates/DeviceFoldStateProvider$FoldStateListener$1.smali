.class final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;
.super Ljava/lang/Object;
.source "DeviceFoldStateProvider.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "folded",
        "",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 3
    .param p1, "folded"    # Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v0, p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$setFolded$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Z)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$setLastHingeAngle$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;F)V

    .line 161
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$getHingeAngleProvider$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$notifyFoldUpdate(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;I)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$cancelTimeout(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$setUnfoldHandled$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Z)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$notifyFoldUpdate(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$rescheduleAbortAnimationTimeout(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-static {v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->access$getHingeAngleProvider$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->start()V

    .line 171
    :goto_0
    return-void
.end method
