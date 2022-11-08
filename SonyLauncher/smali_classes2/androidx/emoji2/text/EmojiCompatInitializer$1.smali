.class Landroidx/emoji2/text/EmojiCompatInitializer$1;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;->delayUntilFirstResume(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/emoji2/text/EmojiCompatInitializer;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/emoji2/text/EmojiCompatInitializer;

    .line 108
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->this$0:Landroidx/emoji2/text/EmojiCompatInitializer;

    iput-object p2, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->this$0:Landroidx/emoji2/text/EmojiCompatInitializer;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompatInitializer;->loadEmojiCompatAfterDelay()V

    .line 112
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 113
    return-void
.end method
