.class Landroidx/slice/widget/ActionRow$2;
.super Ljava/lang/Object;
.source "ActionRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/ActionRow;->handleSetRemoteInputActions(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/ActionRow;

.field final synthetic val$action:Landroidx/slice/SliceItem;

.field final synthetic val$input:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/ActionRow;

    .line 165
    iput-object p1, p0, Landroidx/slice/widget/ActionRow$2;->this$0:Landroidx/slice/widget/ActionRow;

    iput-object p2, p0, Landroidx/slice/widget/ActionRow$2;->val$action:Landroidx/slice/SliceItem;

    iput-object p3, p0, Landroidx/slice/widget/ActionRow$2;->val$input:Landroidx/slice/SliceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 168
    iget-object v0, p0, Landroidx/slice/widget/ActionRow$2;->this$0:Landroidx/slice/widget/ActionRow;

    iget-object v1, p0, Landroidx/slice/widget/ActionRow$2;->val$action:Landroidx/slice/SliceItem;

    iget-object v2, p0, Landroidx/slice/widget/ActionRow$2;->val$input:Landroidx/slice/SliceItem;

    .line 169
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v2

    .line 168
    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/widget/ActionRow;->handleRemoteInputClick(Landroid/view/View;Landroidx/slice/SliceItem;Landroid/app/RemoteInput;)Z

    .line 170
    return-void
.end method
