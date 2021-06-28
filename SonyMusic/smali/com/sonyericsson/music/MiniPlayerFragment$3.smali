.class Lcom/sonyericsson/music/MiniPlayerFragment$3;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$3;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$3;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1200(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$3;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1000(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$3;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1100(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$3;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1102(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-void
.end method
