.class Lcom/sonyericsson/music/ui/LandingPageItemView$1;
.super Ljava/lang/Object;
.source "LandingPageItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/LandingPageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$1;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$1;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->access$002(Lcom/sonyericsson/music/ui/LandingPageItemView;Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;)Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$1;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->access$100(Lcom/sonyericsson/music/ui/LandingPageItemView;)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$1;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->access$200(Lcom/sonyericsson/music/ui/LandingPageItemView;Z)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$1;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    return-void
.end method
