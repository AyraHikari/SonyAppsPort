.class public Landroidx/slice/widget/SliceContent;
.super Ljava/lang/Object;
.source "SliceContent.java"


# instance fields
.field protected mColorItem:Landroidx/slice/SliceItem;

.field protected mContentDescr:Landroidx/slice/SliceItem;

.field protected mLayoutDirItem:Landroidx/slice/SliceItem;

.field protected mRowIndex:I

.field protected mSliceItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 4
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v2

    const-string v3, "slice"

    invoke-direct {v0, p1, v3, v1, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceContent;->init(Landroidx/slice/SliceItem;)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 0
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "rowIndex"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;->init(Landroidx/slice/SliceItem;)V

    .line 95
    iput p2, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    .line 96
    return-void
.end method

.method private fallBackToAppData(Landroid/content/Context;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroidx/slice/SliceItem;)Landroidx/slice/core/SliceAction;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textItem"    # Landroidx/slice/SliceItem;
    .param p3, "iconItem"    # Landroidx/slice/SliceItem;
    .param p4, "iconMode"    # I
    .param p5, "actionItem"    # Landroidx/slice/SliceItem;

    .line 224
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v4, "slice"

    invoke-static {v2, v4, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 225
    .local v2, "slice":Landroidx/slice/SliceItem;
    if-nez v2, :cond_0

    .line 227
    return-object v3

    .line 229
    :cond_0
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 230
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 231
    .local v5, "shortcutIcon":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 232
    .local v6, "shortcutAction":Ljava/lang/CharSequence;
    :goto_1
    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 234
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v10

    .line 235
    .local v10, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v10, :cond_3

    iget-object v11, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    :cond_3
    move-object v11, v3

    .line 236
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v11, :cond_7

    .line 237
    if-nez v5, :cond_4

    .line 238
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 239
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 240
    const/4 v13, 0x2

    .end local p4    # "iconMode":I
    .local v13, "iconMode":I
    goto :goto_3

    .line 237
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "iconMode":I
    .restart local p4    # "iconMode":I
    :cond_4
    move/from16 v13, p4

    .line 242
    .end local p4    # "iconMode":I
    .restart local v13    # "iconMode":I
    :goto_3
    if-nez v6, :cond_5

    .line 243
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 245
    :cond_5
    if-nez p5, :cond_6

    .line 246
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 247
    .local v12, "launchIntent":Landroid/content/Intent;
    if-eqz v12, :cond_6

    .line 248
    new-instance v20, Landroidx/slice/SliceItem;

    .line 249
    invoke-static {v0, v8, v12, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    new-instance v14, Landroidx/slice/Slice$Builder;

    invoke-direct {v14, v4}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 251
    invoke-virtual {v14}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v16

    const/16 v18, 0x0

    new-array v14, v8, [Ljava/lang/String;

    const-string v17, "action"

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .end local p5    # "actionItem":Landroidx/slice/SliceItem;
    .local v14, "actionItem":Landroidx/slice/SliceItem;
    goto :goto_4

    .line 257
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "launchIntent":Landroid/content/Intent;
    .end local v14    # "actionItem":Landroidx/slice/SliceItem;
    .restart local p5    # "actionItem":Landroidx/slice/SliceItem;
    :cond_6
    move-object/from16 v14, p5

    goto :goto_4

    .end local v13    # "iconMode":I
    .restart local p4    # "iconMode":I
    :cond_7
    move/from16 v13, p4

    move-object/from16 v14, p5

    .end local p4    # "iconMode":I
    .end local p5    # "actionItem":Landroidx/slice/SliceItem;
    .restart local v13    # "iconMode":I
    .restart local v14    # "actionItem":Landroidx/slice/SliceItem;
    :goto_4
    if-nez v14, :cond_8

    .line 258
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v9, "intent":Landroid/content/Intent;
    invoke-static {v0, v8, v9, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 261
    .local v7, "pi":Landroid/app/PendingIntent;
    new-instance v8, Landroidx/slice/SliceItem;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v18, "action"

    move-object v15, v8

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v20}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v14, v8

    .line 263
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    if-eqz v14, :cond_9

    .line 264
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v14}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v3, v7, v5, v13, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-object v3

    .line 267
    :cond_9
    return-object v3
.end method

.method private init(Landroidx/slice/SliceItem;)V
    .locals 4
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 99
    iput-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 100
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "int"

    const-string v2, "color"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 103
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v2, "layout_direction"

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 106
    :cond_1
    const-string v0, "text"

    const-string v1, "content_description"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 107
    return-void
.end method


# virtual methods
.method public getAccentColor()I
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mColorItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDir()I
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 147
    iget v0, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    return v0
.end method

.method public getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    return-object v1

    .line 176
    :cond_0
    const/4 v2, 0x0

    .line 177
    .local v2, "iconItem":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    .line 178
    .local v3, "labelItem":Landroidx/slice/SliceItem;
    const/4 v4, 0x5

    .line 181
    .local v4, "imageMode":I
    const-string v5, "title"

    const-string v6, "shortcut"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "hints":[Ljava/lang/String;
    const-string v7, "action"

    invoke-static {v0, v7, v6, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 183
    .local v0, "actionItem":Landroidx/slice/SliceItem;
    const-string v8, "text"

    const-string v9, "image"

    if-eqz v0, :cond_1

    .line 184
    invoke-static {v0, v9, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 185
    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v8, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 187
    :cond_1
    if-nez v0, :cond_2

    .line 189
    iget-object v10, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v7, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 187
    :cond_2
    move-object v7, v0

    .line 193
    .end local v0    # "actionItem":Landroidx/slice/SliceItem;
    .local v7, "actionItem":Landroidx/slice/SliceItem;
    :goto_0
    if-nez v2, :cond_3

    .line 194
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v0, v9, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 196
    :cond_3
    if-nez v3, :cond_4

    .line 197
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v0, v8, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 201
    :cond_4
    if-nez v2, :cond_5

    .line 202
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v9, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    .line 201
    :cond_5
    move-object v9, v2

    .line 204
    .end local v2    # "iconItem":Landroidx/slice/SliceItem;
    .local v9, "iconItem":Landroidx/slice/SliceItem;
    :goto_1
    if-nez v3, :cond_6

    .line 205
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v8, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    move-object v8, v3

    goto :goto_2

    .line 204
    :cond_6
    move-object v8, v3

    .line 209
    .end local v3    # "labelItem":Landroidx/slice/SliceItem;
    .local v8, "labelItem":Landroidx/slice/SliceItem;
    :goto_2
    if-eqz v9, :cond_7

    .line 210
    invoke-static {v9}, Landroidx/slice/SliceUtils;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v4

    move v10, v4

    goto :goto_3

    .line 209
    :cond_7
    move v10, v4

    .line 212
    .end local v4    # "imageMode":I
    .local v10, "imageMode":I
    :goto_3
    if-eqz p1, :cond_8

    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/SliceContent;->fallBackToAppData(Landroid/content/Context;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroidx/slice/SliceItem;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    return-object v0

    .line 215
    :cond_8
    if-eqz v9, :cond_9

    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 216
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 217
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v1, v2, v10, v3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 216
    return-object v0

    .line 219
    :cond_9
    return-object v1
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
