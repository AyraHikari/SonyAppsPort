.class public Lcom/android/launcher3/DevicePaddings;
.super Ljava/lang/Object;
.source "DevicePaddings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DevicePaddings$PaddingFormula;,
        Lcom/android/launcher3/DevicePaddings$DevicePadding;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_PADDING:Ljava/lang/String; = "device-padding"

.field private static final DEVICE_PADDINGS:Ljava/lang/String; = "device-paddings"

.field private static final HOTSEAT_BOTTOM_PADDING:Ljava/lang/String; = "hotseatBottomPadding"

.field private static final TAG:Ljava/lang/String;

.field private static final WORKSPACE_BOTTOM_PADDING:Ljava/lang/String; = "workspaceBottomPadding"

.field private static final WORKSPACE_TOP_PADDING:Ljava/lang/String; = "workspaceTopPadding"


# instance fields
.field mDevicePaddings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DevicePaddings$DevicePadding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/launcher3/DevicePaddings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/DevicePaddings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devicePaddingId"    # I

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    .line 56
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v3, p2

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    .line 57
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 59
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 60
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_f

    :cond_1
    const/4 v5, 0x1

    if-eq v6, v5, :cond_f

    .line 61
    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    const-string v9, "device-paddings"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 63
    .local v9, "displayDepth":I
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v6, v10

    if-ne v10, v7, :cond_2

    .line 64
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v9, :cond_e

    :cond_2
    if-eq v6, v5, :cond_e

    .line 66
    if-ne v6, v8, :cond_d

    const-string v10, "device-padding"

    .line 67
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 68
    nop

    .line 69
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/R$styleable;->DevicePadding:[I

    .line 68
    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 70
    .local v10, "a":Landroid/content/res/TypedArray;
    sget v11, Lcom/android/launcher3/R$styleable;->DevicePadding_maxEmptySpace:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 72
    .local v11, "maxWidthPx":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    const/4 v12, 0x0

    .line 75
    .local v12, "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    const/4 v13, 0x0

    .line 76
    .local v13, "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    const/4 v14, 0x0

    .line 78
    .local v14, "hotseatBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 79
    .local v15, "limitDepth":I
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v6, v8

    if-ne v8, v7, :cond_3

    .line 80
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v15, :cond_7

    :cond_3
    if-eq v6, v5, :cond_7

    .line 82
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 83
    .local v8, "attr":Landroid/util/AttributeSet;
    const/4 v5, 0x2

    if-ne v6, v5, :cond_6

    .line 84
    const-string v5, "workspaceTopPadding"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    new-instance v5, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v5, v2, v8}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v12, v5

    .end local v12    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .local v5, "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    goto :goto_3

    .line 86
    .end local v5    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .restart local v12    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    :cond_4
    const-string v5, "workspaceBottomPadding"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    new-instance v5, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v5, v2, v8}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v13, v5

    .end local v13    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .local v5, "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    goto :goto_3

    .line 88
    .end local v5    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .restart local v13    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    :cond_5
    const-string v5, "hotseatBottomPadding"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    new-instance v5, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v5, v2, v8}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v14, v5

    .line 92
    .end local v8    # "attr":Landroid/util/AttributeSet;
    :cond_6
    :goto_3
    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_2

    .line 94
    :cond_7
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    if-nez v14, :cond_9

    .line 97
    :cond_8
    sget-boolean v5, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-nez v5, :cond_c

    .line 102
    :cond_9
    new-instance v5, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/android/launcher3/DevicePaddings$DevicePadding;-><init>(ILcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;)V

    .line 104
    .local v5, "dp":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    invoke-virtual {v5}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->isValid()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 105
    iget-object v7, v1, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 107
    :cond_a
    sget-object v7, Lcom/android/launcher3/DevicePaddings;->TAG:Ljava/lang/String;

    const-string v8, "Invalid device padding found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-boolean v7, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-nez v7, :cond_b

    .line 112
    .end local v5    # "dp":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "maxWidthPx":I
    .end local v12    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v13    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v14    # "hotseatBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v15    # "limitDepth":I
    :goto_4
    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_1

    .line 109
    .restart local v5    # "dp":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .restart local v10    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "maxWidthPx":I
    .restart local v12    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .restart local v13    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .restart local v14    # "hotseatBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .restart local v15    # "limitDepth":I
    :cond_b
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "DevicePadding is invalid"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "devicePaddingId":I
    throw v7

    .line 98
    .end local v5    # "dp":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "devicePaddingId":I
    :cond_c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "DevicePadding missing padding."

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "devicePaddingId":I
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "maxWidthPx":I
    .end local v12    # "workspaceTopPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v13    # "workspaceBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v14    # "hotseatBottomPadding":Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .end local v15    # "limitDepth":I
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "devicePaddingId":I
    :cond_d
    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_1

    .line 114
    .end local v9    # "displayDepth":I
    :cond_e
    goto/16 :goto_0

    .line 116
    .end local v0    # "depth":I
    .end local v6    # "type":I
    :cond_f
    if-eqz v4, :cond_10

    :try_start_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_10
    nop

    .line 122
    iget-object v0, v1, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher3/DevicePaddings$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/launcher3/DevicePaddings$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 124
    return-void

    .line 56
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_11

    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "devicePaddingId":I
    :cond_11
    :goto_5
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 116
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/launcher3/DevicePaddings;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "devicePaddingId":I
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v3, p2

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    sget-object v4, Lcom/android/launcher3/DevicePaddings;->TAG:Ljava/lang/String;

    const-string v5, "Failure parsing device padding layout."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic lambda$new$0(Lcom/android/launcher3/DevicePaddings$DevicePadding;Lcom/android/launcher3/DevicePaddings$DevicePadding;)I
    .locals 2
    .param p0, "sl1"    # Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .param p1, "sl2"    # Lcom/android/launcher3/DevicePaddings$DevicePadding;

    .line 122
    invoke-static {p0}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->-$$Nest$fgetmaxEmptySpacePx(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result v0

    invoke-static {p1}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->-$$Nest$fgetmaxEmptySpacePx(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDevicePadding(I)Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .locals 3
    .param p1, "extraSpacePx"    # I

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    .line 128
    .local v1, "limit":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    invoke-static {v1}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->-$$Nest$fgetmaxEmptySpacePx(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "limit":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    return-object v0
.end method
