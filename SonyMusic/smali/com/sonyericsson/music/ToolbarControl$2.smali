.class Lcom/sonyericsson/music/ToolbarControl$2;
.super Ljava/lang/Object;
.source "ToolbarControl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ToolbarControl;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/music/ui/TouchInterceptLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ToolbarControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$2;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    .line 202
    iget-object p2, p0, Lcom/sonyericsson/music/ToolbarControl$2;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sonyericsson/music/ToolbarControl;->access$500(Lcom/sonyericsson/music/ToolbarControl;I)V

    :cond_0
    return-void
.end method
