.class Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "ScrollAwareFABBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;->handleFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior$1;->this$0:Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    const/4 v0, 0x4

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method
