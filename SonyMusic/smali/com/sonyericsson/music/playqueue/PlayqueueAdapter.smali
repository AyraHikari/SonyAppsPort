.class Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;
.super Lcom/sonyericsson/music/library/RearrangeAdapter;
.source "PlayqueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;,
        Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;
    }
.end annotation


# instance fields
.field private final mContextMenuTouchAreaOnClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field private mInPlayQueueMode:Z

.field private mIsBuffering:Z

.field private mIsPlaying:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsBuffering:Z

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsPlaying:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mInPlayQueueMode:Z

    .line 47
    new-instance p1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$1;-><init>(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;)V

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mContextMenuTouchAreaOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setEnabled(Landroid/view/View;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Z)V
    .locals 0

    .line 185
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 188
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 191
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 193
    iget-object p1, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->hdAudioIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;

    const-string v1, "available"

    .line 117
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->setEnabled(Landroid/view/View;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Z)V

    .line 121
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const-string v1, "title"

    .line 122
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "artist"

    .line 125
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 124
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "duration"

    .line 130
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 129
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 132
    iget-object v1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Lcom/sonyericsson/music/common/StringUtils;->formatDuration(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    :cond_1
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_1
    sget-object p1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->NONE:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    .line 139
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mInPlayQueueMode:Z

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 143
    iget-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsBuffering:Z

    if-eqz p1, :cond_2

    .line 144
    sget-object p1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->BUFFERING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    goto :goto_2

    .line 146
    :cond_2
    iget-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsPlaying:Z

    if-eqz p1, :cond_3

    .line 147
    sget-object p1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PLAYING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    goto :goto_2

    .line 149
    :cond_3
    sget-object p1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PAUSED:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    .line 154
    :cond_4
    :goto_2
    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->access$000(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V

    .line 155
    invoke-static {v0, p2, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->access$100(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Landroid/content/Context;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V

    const-string p1, "hd_audio"

    .line 158
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 157
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 159
    :goto_3
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->hdAudioIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0057

    const/4 p3, 0x0

    .line 164
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09007e

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    const p3, 0x7f0c0060

    .line 167
    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const/4 p3, 0x0

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 170
    new-instance p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;-><init>()V

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0901fb

    .line 172
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 173
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p3, 0x7f0901fd

    .line 174
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    const p3, 0x7f090183

    .line 175
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    const p3, 0x7f090080

    .line 176
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 177
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 178
    iget-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mContextMenuTouchAreaOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900d0

    .line 179
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->hdAudioIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object p1

    .line 200
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->PREPARING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsBuffering:Z

    if-eq v0, p1, :cond_1

    .line 202
    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsBuffering:Z

    .line 203
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlayQueueCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/RearrangeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 217
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mInPlayQueueMode:Z

    .line 218
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsPlaying:Z

    .line 219
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method onPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mInPlayQueueMode:Z

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mInPlayQueueMode:Z

    .line 232
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method onPlayingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsPlaying:Z

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mIsPlaying:Z

    .line 210
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method onTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 225
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
