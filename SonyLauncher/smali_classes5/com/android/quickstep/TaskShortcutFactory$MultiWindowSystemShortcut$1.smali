.class Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;
.super Ljava/lang/Object;
.source "TaskShortcutFactory.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    .line 192
    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    iput p2, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "oldL"    # I
    .param p7, "oldT"    # I
    .param p8, "oldR"    # I
    .param p9, "oldB"    # I

    .line 196
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmTaskView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->val$taskId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->clearIgnoreResetTask(I)V

    .line 200
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v1}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmTaskView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 201
    return-void
.end method
