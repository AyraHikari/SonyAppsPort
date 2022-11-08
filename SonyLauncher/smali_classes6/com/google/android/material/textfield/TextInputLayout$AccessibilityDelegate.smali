.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 4588
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4589
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4590
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 20
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 4595
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4596
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 4597
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4598
    .local v3, "inputText":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4599
    .local v4, "hintText":Ljava/lang/CharSequence;
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4600
    .local v5, "errorText":Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 4601
    .local v6, "placeholderText":Ljava/lang/CharSequence;
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v7

    .line 4602
    .local v7, "maxCharLimit":I
    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 4603
    .local v8, "counterOverflowDesc":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 4604
    .local v9, "showingText":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v10

    .line 4605
    .local v11, "hasHint":Z
    iget-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v12

    xor-int/2addr v12, v10

    .line 4606
    .local v12, "isHintCollapsed":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v10

    .line 4607
    .local v13, "showingError":Z
    if-nez v13, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v15, v10

    .line 4608
    .local v15, "contentInvalid":Z
    :goto_2
    iget-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 4609
    .local v10, "isShowingPrefixText":Z
    :goto_3
    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_4
    const-string v16, ""

    :goto_4
    move-object/from16 v17, v16

    .line 4612
    .local v17, "hint":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 4613
    iget-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 4614
    iget-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_5

    .line 4616
    :cond_5
    iget-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v14}, Lcom/google/android/material/textfield/TextInputLayout;->access$400(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 4620
    :goto_5
    const-string v14, ", "

    if-eqz v9, :cond_6

    .line 4621
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v4

    goto :goto_6

    .line 4622
    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 4623
    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "hint":Ljava/lang/String;
    .local v2, "hint":Ljava/lang/String;
    .local v18, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4624
    if-eqz v12, :cond_7

    if-eqz v6, :cond_7

    .line 4625
    move-object/from16 v17, v4

    .end local v4    # "hintText":Ljava/lang/CharSequence;
    .local v17, "hintText":Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 4624
    .end local v17    # "hintText":Ljava/lang/CharSequence;
    .restart local v4    # "hintText":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v17, v4

    .end local v4    # "hintText":Ljava/lang/CharSequence;
    .restart local v17    # "hintText":Ljava/lang/CharSequence;
    goto :goto_6

    .line 4627
    .end local v18    # "editText":Landroid/widget/EditText;
    .local v2, "editText":Landroid/widget/EditText;
    .restart local v4    # "hintText":Ljava/lang/CharSequence;
    .local v17, "hint":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v4

    .end local v4    # "hintText":Ljava/lang/CharSequence;
    .local v2, "hint":Ljava/lang/String;
    .local v17, "hintText":Ljava/lang/CharSequence;
    .restart local v18    # "editText":Landroid/widget/EditText;
    if-eqz v6, :cond_9

    .line 4628
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4631
    :cond_9
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 4632
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v19, v5

    .end local v5    # "errorText":Ljava/lang/CharSequence;
    .local v19, "errorText":Ljava/lang/CharSequence;
    const/16 v5, 0x1a

    if-lt v4, v5, :cond_a

    .line 4633
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 4637
    :cond_a
    if-eqz v9, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v4, v2

    .line 4638
    .local v4, "text":Ljava/lang/String;
    :goto_7
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4640
    .end local v4    # "text":Ljava/lang/String;
    :goto_8
    if-nez v9, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    goto :goto_a

    .line 4631
    .end local v19    # "errorText":Ljava/lang/CharSequence;
    .restart local v5    # "errorText":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v19, v5

    .line 4644
    .end local v5    # "errorText":Ljava/lang/CharSequence;
    .restart local v19    # "errorText":Ljava/lang/CharSequence;
    :goto_a
    nop

    .line 4645
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_e

    move v4, v7

    goto :goto_b

    :cond_e
    const/4 v4, -0x1

    .line 4644
    :goto_b
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 4647
    if-eqz v15, :cond_10

    .line 4648
    if-eqz v13, :cond_f

    move-object/from16 v4, v19

    goto :goto_c

    :cond_f
    move-object v4, v8

    :goto_c
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 4651
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_11

    .line 4652
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v4}, Lcom/google/android/material/textfield/TextInputLayout;->access$500(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextView()Landroid/view/View;

    move-result-object v4

    .line 4653
    .local v4, "helperTextView":Landroid/view/View;
    if-eqz v4, :cond_11

    .line 4654
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 4657
    .end local v4    # "helperTextView":Landroid/view/View;
    :cond_11
    return-void
.end method
