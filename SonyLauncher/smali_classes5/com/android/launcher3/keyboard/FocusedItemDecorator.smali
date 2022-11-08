.class public Lcom/android/launcher3/keyboard/FocusedItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FocusedItemDecorator.java"


# instance fields
.field private mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 37
    new-instance v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public getFocusListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method
