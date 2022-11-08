.class public Landroidx/slice/widget/SliceActionView;
.super Landroid/widget/FrameLayout;
.source "SliceActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceActionView$ImageToggle;,
        Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;
    }
.end annotation


# static fields
.field static final CHECKED_STATE_SET:[I

.field private static final HEIGHT_UNBOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SliceActionView"


# instance fields
.field private mActionView:Landroid/view/View;

.field private mEventInfo:Landroidx/slice/widget/EventInfo;

.field private mIconSize:I

.field private mImageSize:I

.field private mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field private mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;

.field private mTextActionPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p3, "rowStyle"    # Landroidx/slice/widget/RowStyle;

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    .line 90
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    .line 92
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p3}, Landroidx/slice/widget/RowStyle;->getIconSize()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    .line 94
    invoke-virtual {p3}, Landroidx/slice/widget/RowStyle;->getImageSize()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    .line 95
    invoke-virtual {p3}, Landroidx/slice/widget/RowStyle;->getTextActionPadding()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    .line 97
    :cond_0
    return-void
.end method

.method private sendActionInternal()V
    .locals 7

    .line 280
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    .line 288
    .local v2, "isChecked":Z
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    .line 289
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.app.slice.extra.TOGGLE_STATE"

    .line 290
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .line 292
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v3, :cond_2

    .line 293
    if-eqz v2, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput v4, v3, Landroidx/slice/widget/EventInfo;->state:I

    .line 296
    .end local v2    # "isChecked":Z
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 297
    .local v2, "actionItem":Landroidx/slice/SliceItem;
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 298
    .local v3, "isLoading":Z
    if-eqz v3, :cond_4

    .line 299
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    .line 300
    iget-object v4, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v4, :cond_4

    .line 301
    iget-object v4, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v4, :cond_3

    iget v4, v4, Landroidx/slice/widget/EventInfo;->rowIndex:I

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    .line 302
    .local v4, "position":I
    :goto_1
    iget-object v5, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v6, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 305
    .end local v4    # "position":I
    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v4, :cond_5

    iget-object v5, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v5, :cond_5

    .line 306
    iget-object v6, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "actionItem":Landroidx/slice/SliceItem;
    .end local v3    # "isLoading":Z
    :cond_5
    goto :goto_2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_6

    .line 310
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 312
    :cond_6
    const-string v1, "SliceActionView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_2
    return-void

    .line 281
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public getAction()Landroidx/slice/core/SliceActionImpl;
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 258
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    .line 262
    return-void

    .line 259
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 250
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    .line 254
    return-void

    .line 251
    :cond_1
    :goto_0
    return-void
.end method

.method public sendAction()V
    .locals 1

    .line 269
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->toggle()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    .line 277
    :goto_0
    return-void
.end method

.method public setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 17
    .param p1, "action"    # Landroidx/slice/core/SliceActionImpl;
    .param p2, "info"    # Landroidx/slice/widget/EventInfo;
    .param p3, "listener"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;
    .param p4, "color"    # I
    .param p5, "loadingListener"    # Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 105
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget-object v2, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceActionView;->removeView(Landroid/view/View;)V

    .line 107
    iput-object v3, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 109
    :cond_0
    iget-object v2, v0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceActionView;->removeView(Landroid/view/View;)V

    .line 111
    iput-object v3, v0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    .line 113
    :cond_1
    move-object/from16 v2, p1

    iput-object v2, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 114
    move-object/from16 v4, p2

    iput-object v4, v0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    .line 115
    move-object/from16 v5, p3

    iput-object v5, v0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 116
    iput-object v3, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 117
    move-object/from16 v3, p5

    iput-object v3, v0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_4

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v9, Landroidx/slice/view/R$layout;->abc_slice_switch:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    .line 122
    .local v6, "switchView":Landroid/widget/Switch;
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget v9, v0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setMinimumHeight(I)V

    .line 125
    iget v9, v0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setMinimumWidth(I)V

    .line 126
    invoke-virtual {v0, v6}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 127
    if-eq v1, v7, :cond_3

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x1010030

    invoke-static {v7, v9}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    .line 132
    .local v7, "uncheckedTrackColor":I
    new-instance v9, Landroid/content/res/ColorStateList;

    new-array v11, v8, [[I

    sget-object v12, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    aput-object v12, v11, v10

    sget-object v13, Landroidx/slice/widget/SliceActionView;->EMPTY_STATE_SET:[I

    const/4 v14, 0x1

    aput-object v13, v11, v14

    new-array v13, v8, [I

    aput v1, v13, v10

    aput v7, v13, v14

    invoke-direct {v9, v11, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 136
    .local v9, "trackTintList":Landroid/content/res/ColorStateList;
    invoke-virtual {v6}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 137
    .local v11, "trackDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v11, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 138
    invoke-virtual {v6, v11}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v15, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v13, v15}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result v13

    .line 143
    .local v13, "uncheckedThumbColor":I
    if-nez v13, :cond_2

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v14, Landroidx/appcompat/R$color;->switch_thumb_normal_material_light:I

    invoke-static {v15, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    .line 149
    :cond_2
    new-instance v14, Landroid/content/res/ColorStateList;

    new-array v15, v8, [[I

    aput-object v12, v15, v10

    sget-object v12, Landroidx/slice/widget/SliceActionView;->EMPTY_STATE_SET:[I

    const/16 v16, 0x1

    aput-object v12, v15, v16

    new-array v8, v8, [I

    aput v1, v8, v10

    aput v13, v8, v16

    invoke-direct {v14, v15, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v8, v14

    .line 153
    .local v8, "thumbTintList":Landroid/content/res/ColorStateList;
    invoke-virtual {v6}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 154
    .local v10, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v10, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 155
    invoke-virtual {v6, v10}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .end local v7    # "uncheckedTrackColor":I
    .end local v8    # "thumbTintList":Landroid/content/res/ColorStateList;
    .end local v9    # "trackTintList":Landroid/content/res/ColorStateList;
    .end local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "trackDrawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "uncheckedThumbColor":I
    :cond_3
    iput-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 159
    .end local v6    # "switchView":Landroid/widget/Switch;
    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v6

    const/4 v9, 0x6

    if-ne v6, v9, :cond_5

    .line 160
    new-instance v6, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 161
    .local v6, "textButton":Landroid/widget/Button;
    iput-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 162
    move-object v7, v6

    check-cast v7, Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v7, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 165
    iget-object v7, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 167
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 168
    iget-object v8, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget v8, v0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    .line 171
    .local v8, "p":I
    iget-object v9, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 172
    iget-object v9, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v6    # "textButton":Landroid/widget/Button;
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "p":I
    goto/16 :goto_2

    .line 173
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 175
    new-instance v6, Landroidx/slice/widget/SliceActionView$ImageToggle;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroidx/slice/widget/SliceActionView$ImageToggle;-><init>(Landroid/content/Context;)V

    .line 176
    .local v6, "imageToggle":Landroidx/slice/widget/SliceActionView$ImageToggle;
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    .line 177
    iput-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 178
    .end local v6    # "imageToggle":Landroidx/slice/widget/SliceActionView$ImageToggle;
    goto :goto_0

    .line 179
    :cond_6
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 181
    :goto_0
    iget-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 183
    iget-object v6, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 184
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v9, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    if-eq v1, v7, :cond_7

    iget-object v9, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v9}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v9

    if-nez v9, :cond_7

    if-eqz v6, :cond_7

    .line 187
    invoke-static {v6, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 189
    :cond_7
    iget-object v9, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 191
    iget v10, v0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 192
    iget-object v10, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const/4 v10, 0x0

    .line 194
    .local v10, "p":I
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v11

    if-nez v11, :cond_9

    .line 195
    iget v11, v0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    if-ne v11, v7, :cond_8

    .line 196
    iget v7, v0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    div-int/2addr v7, v8

    goto :goto_1

    :cond_8
    iget v7, v0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    sub-int/2addr v11, v7

    div-int/lit8 v7, v11, 0x2

    :goto_1
    move v10, v7

    .line 198
    :cond_9
    iget-object v7, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 199
    const v7, 0x101030e

    .line 200
    .local v7, "touchFeedbackAttr":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v8, v11, :cond_a

    .line 201
    const v7, 0x101045c

    .line 203
    :cond_a
    iget-object v8, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v7}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v8, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 173
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "touchFeedbackAttr":I
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "p":I
    :cond_b
    :goto_2
    nop

    .line 207
    :goto_3
    iget-object v6, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    .line 210
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_4
    nop

    .line 211
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    iget-object v7, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    :cond_d
    return-void
.end method

.method public setLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .line 219
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 220
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_progress_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    .line 223
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 227
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 238
    :cond_0
    return-void
.end method
