.class Landroidx/slice/widget/ActionRow$1;
.super Ljava/lang/Object;
.source "ActionRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/ActionRow;

.field final synthetic val$actionItem:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/ActionRow;

    .line 137
    iput-object p1, p0, Landroidx/slice/widget/ActionRow$1;->this$0:Landroidx/slice/widget/ActionRow;

    iput-object p2, p0, Landroidx/slice/widget/ActionRow$1;->val$actionItem:Landroidx/slice/SliceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 143
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ActionRow$1;->val$actionItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
